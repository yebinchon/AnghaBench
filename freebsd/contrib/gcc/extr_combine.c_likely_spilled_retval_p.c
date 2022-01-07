
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct likely_spilled_retval_info {unsigned int regno; unsigned int nregs; unsigned int mask; } ;
typedef scalar_t__ rtx ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ CLASS_LIKELY_SPILLED_P (int ) ;
 int FUNCTION_VALUE_REGNO_P (unsigned int) ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (scalar_t__) ;
 int NONJUMP_INSN_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 unsigned int REGNO (scalar_t__) ;
 int REGNO_REG_CLASS (unsigned int) ;
 int REG_P (scalar_t__) ;
 scalar_t__ USE ;
 scalar_t__ XEXP (int ,int ) ;
 unsigned int** hard_regno_nregs ;
 int likely_spilled_retval_1 ;
 int note_stores (int ,int ,struct likely_spilled_retval_info*) ;
 int this_basic_block ;

__attribute__((used)) static int
likely_spilled_retval_p (rtx insn)
{
  rtx use = BB_END (this_basic_block);
  rtx reg, p;
  unsigned regno, nregs;



  unsigned mask;
  struct likely_spilled_retval_info info;

  if (!NONJUMP_INSN_P (use) || GET_CODE (PATTERN (use)) != USE || insn == use)
    return 0;
  reg = XEXP (PATTERN (use), 0);
  if (!REG_P (reg) || !FUNCTION_VALUE_REGNO_P (REGNO (reg)))
    return 0;
  regno = REGNO (reg);
  nregs = hard_regno_nregs[regno][GET_MODE (reg)];
  if (nregs == 1)
    return 0;
  mask = (2U << (nregs - 1)) - 1;


  info.regno = regno;
  info.nregs = nregs;
  info.mask = mask;
  for (p = PREV_INSN (use); info.mask && p != insn; p = PREV_INSN (p))
    note_stores (PATTERN (insn), likely_spilled_retval_1, &info);
  mask = info.mask;



  nregs --;
  do
    {
      if ((mask & 1 << nregs)
   && CLASS_LIKELY_SPILLED_P (REGNO_REG_CLASS (regno + nregs)))
 return 1;
    } while (nregs--);
  return 0;
}
