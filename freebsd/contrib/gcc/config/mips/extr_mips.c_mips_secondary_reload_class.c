
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ACC_REGS ;
 scalar_t__ ACC_REG_P (int) ;
 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 int FP_REGS ;
 scalar_t__ FP_REG_P (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GP_REG_P (int) ;
 int GR_REGS ;
 int LEA_REGS ;
 int M16_NA_REGS ;
 int M16_REGS ;
 int M16_REG_P (int) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MODE_FLOAT ;
 int NO_REGS ;
 scalar_t__ REG_P (scalar_t__) ;
 int ST_REGS ;
 scalar_t__ ST_REG_P (int) ;
 scalar_t__ SUBREG ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 scalar_t__ mips_dangerous_for_la25_p (scalar_t__) ;
 int * reg_class_contents ;
 scalar_t__ reg_class_subset_p (int,int ) ;
 int true_regnum (scalar_t__) ;

enum reg_class
mips_secondary_reload_class (enum reg_class class,
        enum machine_mode mode, rtx x, int in_p)
{
  enum reg_class gr_regs = TARGET_MIPS16 ? M16_REGS : GR_REGS;
  int regno = -1;
  int gp_reg_p;

  if (REG_P (x)|| GET_CODE (x) == SUBREG)
    regno = true_regnum (x);

  gp_reg_p = TARGET_MIPS16 ? M16_REG_P (regno) : GP_REG_P (regno);

  if (mips_dangerous_for_la25_p (x))
    {
      gr_regs = LEA_REGS;
      if (TEST_HARD_REG_BIT (reg_class_contents[(int) class], 25))
 return gr_regs;
    }





  if (reg_class_subset_p (class, ACC_REGS))
    {
      if (TARGET_MIPS16 && in_p)
 {

   return M16_REGS;
 }
      return gp_reg_p ? NO_REGS : gr_regs;
    }
  if (ACC_REG_P (regno))
    {
      if (TARGET_MIPS16 && ! in_p)
 {

   return M16_REGS;
 }
      return class == gr_regs ? NO_REGS : gr_regs;
    }





  if (class == ST_REGS)
    {
      if (in_p)
 return FP_REGS;
      return gp_reg_p ? NO_REGS : gr_regs;
    }
  if (ST_REG_P (regno))
    {
      if (! in_p)
 return FP_REGS;
      return class == gr_regs ? NO_REGS : gr_regs;
    }

  if (class == FP_REGS)
    {
      if (MEM_P (x))
 {

   return NO_REGS;
 }
      else if (CONSTANT_P (x) && GET_MODE_CLASS (mode) == MODE_FLOAT)
 {



   return NO_REGS;
 }
      else if (gp_reg_p || x == CONST0_RTX (mode))
 {

   return NO_REGS;
 }
      else if (FP_REG_P (regno))
 {

   return NO_REGS;
 }
      else
 {

   return gr_regs;
 }
    }



  if (TARGET_MIPS16)
    {
      if (class != M16_REGS && class != M16_NA_REGS)
 {
   if (gp_reg_p)
     return NO_REGS;
   return M16_REGS;
 }
      if (! gp_reg_p)
 {
   if (class == M16_REGS || class == M16_NA_REGS)
     return NO_REGS;
   return M16_REGS;
 }
    }

  return NO_REGS;
}
