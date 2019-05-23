resource "random_string" "string" {
  length  = 2
  special = false
}

resource "null_resource" "string" {
  provisioner "local-exec" {
    command = "echo Random string is ${random_string.string.result}"
  }
}
