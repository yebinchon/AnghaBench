
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_read_memory_integer_arguments {int len; int result; int memaddr; } ;
typedef int CORE_ADDR ;


 int read_memory_integer (int ,int) ;

__attribute__((used)) static int
do_captured_read_memory_integer (void *data)
{
  struct captured_read_memory_integer_arguments *args = (struct captured_read_memory_integer_arguments*) data;
  CORE_ADDR memaddr = args->memaddr;
  int len = args->len;

  args->result = read_memory_integer (memaddr, len);

  return 1;
}
