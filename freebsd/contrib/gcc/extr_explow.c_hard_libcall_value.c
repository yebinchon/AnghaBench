
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int LIBCALL_VALUE (int) ;

rtx
hard_libcall_value (enum machine_mode mode)
{
  return LIBCALL_VALUE (mode);
}
