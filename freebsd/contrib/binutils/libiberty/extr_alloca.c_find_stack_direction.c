
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ADDRESS_FUNCTION (char) ;
 int stack_dir ;

__attribute__((used)) static void
find_stack_direction (void)
{
  static char *addr = ((void*)0);
  auto char dummy;

  if (addr == ((void*)0))
    {
      addr = ADDRESS_FUNCTION (dummy);

      find_stack_direction ();
    }
  else
    {

      if (ADDRESS_FUNCTION (dummy) > addr)
 stack_dir = 1;
      else
 stack_dir = -1;
    }
}
