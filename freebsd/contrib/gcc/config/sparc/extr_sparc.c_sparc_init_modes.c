
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CCFPEmode ;
 scalar_t__ CCFP_MODE ;
 scalar_t__ CCFPmode ;
 scalar_t__ CC_MODE ;
 scalar_t__ DF_MODE ;
 scalar_t__ D_MODE ;
 int EXTRA_FP_REGS ;
 int FIRST_PSEUDO_REGISTER ;
 int FPCC_REGS ;
 int FP_REGS ;
 int FRAME_POINTER_REGNUM ;
 int GENERAL_REGS ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 int I64_REGS ;







 int NO_REGS ;
 int NUM_MACHINE_MODES ;
 scalar_t__ OF_MODE ;
 scalar_t__ O_MODE ;
 scalar_t__ SF_MODE ;
 scalar_t__ S_MODE ;
 scalar_t__ TARGET_ARCH64 ;
 scalar_t__ TARGET_V8PLUS ;
 scalar_t__ TF_MODE ;
 scalar_t__ T_MODE ;
 int hard_32bit_mode_classes ;
 int hard_64bit_mode_classes ;
 int hard_regno_mode_classes ;
 int* sparc_mode_class ;
 int * sparc_regno_reg_class ;

__attribute__((used)) static void
sparc_init_modes (void)
{
  int i;

  for (i = 0; i < NUM_MACHINE_MODES; i++)
    {
      switch (GET_MODE_CLASS (i))
 {
 case 130:
 case 129:
 case 132:
   if (GET_MODE_SIZE (i) <= 4)
     sparc_mode_class[i] = 1 << (int) S_MODE;
   else if (GET_MODE_SIZE (i) == 8)
     sparc_mode_class[i] = 1 << (int) D_MODE;
   else if (GET_MODE_SIZE (i) == 16)
     sparc_mode_class[i] = 1 << (int) T_MODE;
   else if (GET_MODE_SIZE (i) == 32)
     sparc_mode_class[i] = 1 << (int) O_MODE;
   else
     sparc_mode_class[i] = 0;
   break;
 case 128:
   if (GET_MODE_SIZE (i) <= 4)
     sparc_mode_class[i] = 1 << (int)SF_MODE;
   else if (GET_MODE_SIZE (i) == 8)
     sparc_mode_class[i] = 1 << (int)DF_MODE;
   break;
 case 131:
 case 133:
   if (GET_MODE_SIZE (i) <= 4)
     sparc_mode_class[i] = 1 << (int) SF_MODE;
   else if (GET_MODE_SIZE (i) == 8)
     sparc_mode_class[i] = 1 << (int) DF_MODE;
   else if (GET_MODE_SIZE (i) == 16)
     sparc_mode_class[i] = 1 << (int) TF_MODE;
   else if (GET_MODE_SIZE (i) == 32)
     sparc_mode_class[i] = 1 << (int) OF_MODE;
   else
     sparc_mode_class[i] = 0;
   break;
 case 134:
   if (i == (int) CCFPmode || i == (int) CCFPEmode)
     sparc_mode_class[i] = 1 << (int) CCFP_MODE;
   else
     sparc_mode_class[i] = 1 << (int) CC_MODE;
   break;
 default:
   sparc_mode_class[i] = 0;
   break;
 }
    }

  if (TARGET_ARCH64)
    hard_regno_mode_classes = hard_64bit_mode_classes;
  else
    hard_regno_mode_classes = hard_32bit_mode_classes;


  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {
      if (i < 16 && TARGET_V8PLUS)
 sparc_regno_reg_class[i] = I64_REGS;
      else if (i < 32 || i == FRAME_POINTER_REGNUM)
 sparc_regno_reg_class[i] = GENERAL_REGS;
      else if (i < 64)
 sparc_regno_reg_class[i] = FP_REGS;
      else if (i < 96)
 sparc_regno_reg_class[i] = EXTRA_FP_REGS;
      else if (i < 100)
 sparc_regno_reg_class[i] = FPCC_REGS;
      else
 sparc_regno_reg_class[i] = NO_REGS;
    }
}
