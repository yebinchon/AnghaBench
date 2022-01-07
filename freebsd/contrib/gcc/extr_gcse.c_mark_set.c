
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_DEST (int ) ;
 int SET_REGNO_REG_SET (int ,int ) ;
 int SET_SRC (int ) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int XEXP (int ,int ) ;
 scalar_t__ ZERO_EXTRACT ;
 int mark_call (int ) ;
 int record_last_mem_set_info (int ) ;
 int reg_set_bitmap ;

__attribute__((used)) static void
mark_set (rtx pat, rtx insn)
{
  rtx dest = SET_DEST (pat);

  while (GET_CODE (dest) == SUBREG
  || GET_CODE (dest) == ZERO_EXTRACT
  || GET_CODE (dest) == STRICT_LOW_PART)
    dest = XEXP (dest, 0);

  if (REG_P (dest))
    SET_REGNO_REG_SET (reg_set_bitmap, REGNO (dest));
  else if (MEM_P (dest))
    record_last_mem_set_info (insn);

  if (GET_CODE (SET_SRC (pat)) == CALL)
    mark_call (insn);
}
