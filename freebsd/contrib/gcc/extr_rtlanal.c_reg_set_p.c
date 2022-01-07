
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL_P (int ) ;
 int CLOBBER ;
 scalar_t__ FIND_REG_INC_NOTE (int ,int ) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int GET_MODE (int ) ;
 scalar_t__ INSN_P (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ find_reg_fusage (int ,int ,int ) ;
 scalar_t__ overlaps_hard_reg_set_p (int ,int ,scalar_t__) ;
 int regs_invalidated_by_call ;
 scalar_t__ set_of (int ,int ) ;

int
reg_set_p (rtx reg, rtx insn)
{


  if (INSN_P (insn)
      && (FIND_REG_INC_NOTE (insn, reg)
   || (CALL_P (insn)
       && ((REG_P (reg)
     && REGNO (reg) < FIRST_PSEUDO_REGISTER
     && overlaps_hard_reg_set_p (regs_invalidated_by_call,
            GET_MODE (reg), REGNO (reg)))
    || MEM_P (reg)
    || find_reg_fusage (insn, CLOBBER, reg)))))
    return 1;

  return set_of (reg, insn) != NULL_RTX;
}
