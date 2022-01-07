
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_read_memory_integer_arguments {int len; int result; int memaddr; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int RETURN_MASK_ALL ;
 int catch_errors (int ,struct captured_read_memory_integer_arguments*,char*,int ) ;
 int do_captured_read_memory_integer ;

int
safe_read_memory_integer (CORE_ADDR memaddr, int len, LONGEST *return_value)
{
  int status;
  struct captured_read_memory_integer_arguments args;
  args.memaddr = memaddr;
  args.len = len;

  status = catch_errors (do_captured_read_memory_integer, &args,
                        "", RETURN_MASK_ALL);
  if (status)
    *return_value = args.result;

  return status;
}
