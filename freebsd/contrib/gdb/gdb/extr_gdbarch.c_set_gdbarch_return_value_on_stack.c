
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int return_value_on_stack; } ;
typedef int gdbarch_return_value_on_stack_ftype ;



void
set_gdbarch_return_value_on_stack (struct gdbarch *gdbarch,
                                   gdbarch_return_value_on_stack_ftype return_value_on_stack)
{
  gdbarch->return_value_on_stack = return_value_on_stack;
}
