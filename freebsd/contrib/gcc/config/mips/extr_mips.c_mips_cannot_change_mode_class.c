
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ACC_REGS ;
 int FP_INC ;
 int FP_REGS ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int SImode ;
 scalar_t__ TARGET_BIG_ENDIAN ;
 scalar_t__ TARGET_FLOAT64 ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ reg_classes_intersect_p (int ,int) ;

bool
mips_cannot_change_mode_class (enum machine_mode from,
          enum machine_mode to, enum reg_class class)
{
  if (MIN (GET_MODE_SIZE (from), GET_MODE_SIZE (to)) <= UNITS_PER_WORD
      && MAX (GET_MODE_SIZE (from), GET_MODE_SIZE (to)) > UNITS_PER_WORD)
    {
      if (TARGET_BIG_ENDIAN)
 {




   if (FP_INC > 1 && reg_classes_intersect_p (FP_REGS, class))
     return 1;
 }
      else
 {






   if (reg_classes_intersect_p (ACC_REGS, class))
     return 1;
 }
    }




  if (TARGET_FLOAT64
      && from == SImode
      && GET_MODE_SIZE (to) >= UNITS_PER_WORD
      && reg_classes_intersect_p (FP_REGS, class))
    return 1;
  return 0;
}
