
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_DOUBLE ;
 int FLOAT_INT_REGS ;
 int FLOAT_REGS ;
 int FLOAT_SSE_REGS ;
 int FP_SECOND_REG ;
 int FP_SECOND_SSE_REGS ;
 int FP_TOP_REG ;
 int FP_TOP_SSE_REGS ;
 int GENERAL_REGS ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ MAYBE_MMX_CLASS_P (int) ;
 scalar_t__ MAYBE_SSE_CLASS_P (int) ;
 int NO_REGS ;
 scalar_t__ PLUS ;
 scalar_t__ QImode ;
 int Q_REGS ;
 scalar_t__ SSE_CLASS_P (int) ;
 scalar_t__ SSE_FLOAT_MODE_P (int) ;
 scalar_t__ TARGET_80387 ;
 int TARGET_MIX_SSE_I387 ;
 scalar_t__ TARGET_SSE_MATH ;
 scalar_t__ VOIDmode ;
 scalar_t__ reg_class_subset_p (int,int) ;
 scalar_t__ standard_80387_constant_p (scalar_t__) ;

enum reg_class
ix86_preferred_reload_class (rtx x, enum reg_class class)
{
  enum machine_mode mode = GET_MODE (x);



  if (class == NO_REGS)
    return NO_REGS;


  if (x == CONST0_RTX (mode))
    return class;




  if (CONSTANT_P (x)
      && (MAYBE_MMX_CLASS_P (class) || MAYBE_SSE_CLASS_P (class)))
    return NO_REGS;


  if (TARGET_SSE_MATH && !TARGET_MIX_SSE_I387 && SSE_FLOAT_MODE_P (mode))
    return SSE_CLASS_P (class) ? class : NO_REGS;


  if (GET_CODE (x) == CONST_DOUBLE && GET_MODE (x) != VOIDmode)
    {

      if (reg_class_subset_p (class, GENERAL_REGS))
        return class;




      if (TARGET_80387
   && standard_80387_constant_p (x))
 {

   if (class == FLOAT_SSE_REGS)
     return FLOAT_REGS;
   if (class == FP_TOP_SSE_REGS)
     return FP_TOP_REG;
   if (class == FP_SECOND_SSE_REGS)
     return FP_SECOND_REG;
   if (class == FLOAT_INT_REGS || class == FLOAT_REGS)
     return class;
 }

      return NO_REGS;
    }




  if (GET_CODE (x) == PLUS)
    return reg_class_subset_p (class, GENERAL_REGS) ? class : NO_REGS;



  if (GET_MODE (x) == QImode && !CONSTANT_P (x))
    {
      if (reg_class_subset_p (class, Q_REGS))
 return class;
      if (reg_class_subset_p (Q_REGS, class))
 return Q_REGS;
      return NO_REGS;
    }

  return class;
}
