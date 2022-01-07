
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_REGNO_REG_SET (int ,int ) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int XEXP (int ,int ) ;
 int record_last_mem_set_info (int ) ;
 int reg_set_bitmap ;

__attribute__((used)) static void
mark_clobber (rtx pat, rtx insn)
{
  rtx clob = XEXP (pat, 0);

  while (GET_CODE (clob) == SUBREG || GET_CODE (clob) == STRICT_LOW_PART)
    clob = XEXP (clob, 0);

  if (REG_P (clob))
    SET_REGNO_REG_SET (reg_set_bitmap, REGNO (clob));
  else
    record_last_mem_set_info (insn);
}
