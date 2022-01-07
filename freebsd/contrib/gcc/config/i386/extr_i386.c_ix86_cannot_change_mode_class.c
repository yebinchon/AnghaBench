
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_SIZE (int) ;
 scalar_t__ MAYBE_FLOAT_CLASS_P (int) ;
 scalar_t__ MAYBE_MMX_CLASS_P (int) ;
 scalar_t__ MAYBE_SSE_CLASS_P (int) ;

bool
ix86_cannot_change_mode_class (enum machine_mode from, enum machine_mode to,
          enum reg_class class)
{
  if (from == to)
    return 0;



  if (MAYBE_FLOAT_CLASS_P (class))
    return 1;

  if (MAYBE_SSE_CLASS_P (class) || MAYBE_MMX_CLASS_P (class))
    {




      if (GET_MODE_SIZE (from) < 4)
 return 1;





      if (GET_MODE_SIZE (to) < GET_MODE_SIZE (from))
 return 1;
    }

  return 0;
}
