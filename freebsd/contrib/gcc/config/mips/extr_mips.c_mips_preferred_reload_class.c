
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;


 scalar_t__ FLOAT_MODE_P (int ) ;
 int FP_REGS ;
 int GET_MODE (int ) ;
 int GR_REGS ;
 int LEA_REGS ;
 int M16_REGS ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ mips_dangerous_for_la25_p (int ) ;
 scalar_t__ reg_class_subset_p (int,int) ;

enum reg_class
mips_preferred_reload_class (rtx x, enum reg_class class)
{
  if (mips_dangerous_for_la25_p (x) && reg_class_subset_p (LEA_REGS, class))
    return LEA_REGS;

  if (TARGET_HARD_FLOAT
      && FLOAT_MODE_P (GET_MODE (x))
      && reg_class_subset_p (FP_REGS, class))
    return FP_REGS;

  if (reg_class_subset_p (GR_REGS, class))
    class = GR_REGS;

  if (TARGET_MIPS16 && reg_class_subset_p (M16_REGS, class))
    class = M16_REGS;

  return class;
}
