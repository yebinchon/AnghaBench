
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CC_REGNO_P (int) ;
 scalar_t__ FP_REGNO_P (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MMX_REGNO_P (int) ;
 scalar_t__ MODE_CC ;
 scalar_t__ MODE_PARTIAL_INT ;
 scalar_t__ MODE_RANDOM ;
 int QImode ;
 scalar_t__ SSE_REGNO_P (int) ;
 scalar_t__ TARGET_64BIT ;
 int TARGET_PARTIAL_REG_STALL ;
 int VALID_FP_MODE_P (int) ;
 scalar_t__ VALID_INT_MODE_P (int) ;
 scalar_t__ VALID_MMX_REG_MODE (int) ;
 scalar_t__ VALID_MMX_REG_MODE_3DNOW (int) ;
 scalar_t__ VALID_SSE2_REG_MODE (int) ;
 scalar_t__ VALID_SSE_REG_MODE (int) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;

bool
ix86_hard_regno_mode_ok (int regno, enum machine_mode mode)
{

  if (CC_REGNO_P (regno))
    return GET_MODE_CLASS (mode) == MODE_CC;
  if (GET_MODE_CLASS (mode) == MODE_CC
      || GET_MODE_CLASS (mode) == MODE_RANDOM
      || GET_MODE_CLASS (mode) == MODE_PARTIAL_INT)
    return 0;
  if (FP_REGNO_P (regno))
    return VALID_FP_MODE_P (mode);
  if (SSE_REGNO_P (regno))
    {



      return (VALID_SSE_REG_MODE (mode)
       || VALID_SSE2_REG_MODE (mode)
       || VALID_MMX_REG_MODE (mode)
       || VALID_MMX_REG_MODE_3DNOW (mode));
    }
  if (MMX_REGNO_P (regno))
    {



      return (VALID_MMX_REG_MODE (mode)
       || VALID_MMX_REG_MODE_3DNOW (mode));
    }

  if (mode == QImode)
    {


      if (regno < 4 || TARGET_64BIT)
 return 1;
      if (!TARGET_PARTIAL_REG_STALL)
 return 1;
      return reload_in_progress || reload_completed;
    }

  else if (VALID_INT_MODE_P (mode))
    return 1;
  else if (VALID_FP_MODE_P (mode))
    return 1;




  else if (VALID_MMX_REG_MODE_3DNOW (mode) || VALID_MMX_REG_MODE (mode))
    return 1;

  return 0;
}
