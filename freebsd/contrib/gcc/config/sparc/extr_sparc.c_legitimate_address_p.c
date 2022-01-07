
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONSTANT_P (int *) ;
 scalar_t__ CONST_INT ;
 int DFmode ;
 int DImode ;
 int FIRST_PSEUDO_REGISTER ;
 int FRAME_POINTER_REGNUM ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ LO_SUM ;
 scalar_t__ MEM ;
 scalar_t__ PLUS ;
 int Pmode ;
 int REGNO (int *) ;
 int REGNO_OK_FOR_BASE_P (int) ;
 scalar_t__ REG_P (int *) ;
 scalar_t__ RTX_OK_FOR_OFFSET_P (int *) ;
 scalar_t__ RTX_OK_FOR_OLO10_P (int *) ;
 scalar_t__ SMALL_INT (int *) ;
 scalar_t__ SPARC_SYMBOL_REF_TLS_P (int *) ;
 scalar_t__ SUBREG ;
 int * SUBREG_REG (int *) ;
 scalar_t__ TARGET_ARCH32 ;
 scalar_t__ TARGET_ARCH64 ;
 int TARGET_CM_MEDMID ;
 scalar_t__ TARGET_FPU ;
 scalar_t__ TARGET_HARD_QUAD ;
 int TFmode ;
 scalar_t__ USE_AS_OFFSETABLE_LO10 ;
 int VOIDmode ;
 int * XEXP (int *,int) ;
 int flag_pic ;
 int optimize ;
 int * pic_offset_table_rtx ;
 int symbolic_operand (int *,int ) ;

int
legitimate_address_p (enum machine_mode mode, rtx addr, int strict)
{
  rtx rs1 = ((void*)0), rs2 = ((void*)0), imm1 = ((void*)0);

  if (REG_P (addr) || GET_CODE (addr) == SUBREG)
    rs1 = addr;
  else if (GET_CODE (addr) == PLUS)
    {
      rs1 = XEXP (addr, 0);
      rs2 = XEXP (addr, 1);



      if (!REG_P (rs1)
   && GET_CODE (rs1) != SUBREG
   && (REG_P (rs2)
       || GET_CODE (rs2) == SUBREG
       || (GET_CODE (rs2) == LO_SUM && GET_CODE (rs1) != LO_SUM)))
 {
   rs1 = XEXP (addr, 1);
   rs2 = XEXP (addr, 0);
 }

      if ((flag_pic == 1
    && rs1 == pic_offset_table_rtx
    && !REG_P (rs2)
    && GET_CODE (rs2) != SUBREG
    && GET_CODE (rs2) != LO_SUM
    && GET_CODE (rs2) != MEM
    && ! SPARC_SYMBOL_REF_TLS_P (rs2)
    && (! symbolic_operand (rs2, VOIDmode) || mode == Pmode)
    && (GET_CODE (rs2) != CONST_INT || SMALL_INT (rs2)))
   || ((REG_P (rs1)
        || GET_CODE (rs1) == SUBREG)
       && RTX_OK_FOR_OFFSET_P (rs2)))
 {
   imm1 = rs2;
   rs2 = ((void*)0);
 }
      else if ((REG_P (rs1) || GET_CODE (rs1) == SUBREG)
        && (REG_P (rs2) || GET_CODE (rs2) == SUBREG))
 {






   if (mode == TFmode
       && ! (TARGET_FPU && TARGET_ARCH64 && TARGET_HARD_QUAD))
     return 0;





   if (TARGET_ARCH32 && !optimize
       && (mode == DFmode || mode == DImode))
     return 0;
 }
      else if (USE_AS_OFFSETABLE_LO10
        && GET_CODE (rs1) == LO_SUM
        && TARGET_ARCH64
        && ! TARGET_CM_MEDMID
        && RTX_OK_FOR_OLO10_P (rs2))
 {
   rs2 = ((void*)0);
   imm1 = XEXP (rs1, 1);
   rs1 = XEXP (rs1, 0);
   if (! CONSTANT_P (imm1) || SPARC_SYMBOL_REF_TLS_P (rs1))
     return 0;
 }
    }
  else if (GET_CODE (addr) == LO_SUM)
    {
      rs1 = XEXP (addr, 0);
      imm1 = XEXP (addr, 1);

      if (! CONSTANT_P (imm1) || SPARC_SYMBOL_REF_TLS_P (rs1))
 return 0;



      if (mode == TFmode && TARGET_ARCH32)
 return 0;
    }
  else if (GET_CODE (addr) == CONST_INT && SMALL_INT (addr))
    return 1;
  else
    return 0;

  if (GET_CODE (rs1) == SUBREG)
    rs1 = SUBREG_REG (rs1);
  if (!REG_P (rs1))
    return 0;

  if (rs2)
    {
      if (GET_CODE (rs2) == SUBREG)
 rs2 = SUBREG_REG (rs2);
      if (!REG_P (rs2))
 return 0;
    }

  if (strict)
    {
      if (!REGNO_OK_FOR_BASE_P (REGNO (rs1))
   || (rs2 && !REGNO_OK_FOR_BASE_P (REGNO (rs2))))
 return 0;
    }
  else
    {
      if ((REGNO (rs1) >= 32
    && REGNO (rs1) != FRAME_POINTER_REGNUM
    && REGNO (rs1) < FIRST_PSEUDO_REGISTER)
   || (rs2
       && (REGNO (rs2) >= 32
    && REGNO (rs2) != FRAME_POINTER_REGNUM
    && REGNO (rs2) < FIRST_PSEUDO_REGISTER)))
 return 0;
    }
  return 1;
}
