
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int virtual_stack_vars_rtx ;

rtx
default_builtin_setjmp_frame_value (void)
{
  return virtual_stack_vars_rtx;
}
