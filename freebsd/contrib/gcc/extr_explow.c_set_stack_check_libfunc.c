
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int stack_check_libfunc ;

void
set_stack_check_libfunc (rtx libfunc)
{
  stack_check_libfunc = libfunc;
}
