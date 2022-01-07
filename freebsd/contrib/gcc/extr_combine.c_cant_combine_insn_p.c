
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLASS_LIKELY_SPILLED_P (int ) ;
 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 size_t REGNO (int ) ;
 int REGNO_REG_CLASS (size_t) ;
 scalar_t__ REG_P (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int * fixed_regs ;
 int single_set (int ) ;

__attribute__((used)) static int
cant_combine_insn_p (rtx insn)
{
  rtx set;
  rtx src, dest;




  if (! INSN_P (insn))
    return 1;
  set = single_set (insn);
  if (! set)
    return 0;
  src = SET_SRC (set);
  dest = SET_DEST (set);
  if (GET_CODE (src) == SUBREG)
    src = SUBREG_REG (src);
  if (GET_CODE (dest) == SUBREG)
    dest = SUBREG_REG (dest);
  if (REG_P (src) && REG_P (dest)
      && ((REGNO (src) < FIRST_PSEUDO_REGISTER
    && ! fixed_regs[REGNO (src)]
    && CLASS_LIKELY_SPILLED_P (REGNO_REG_CLASS (REGNO (src))))
   || (REGNO (dest) < FIRST_PSEUDO_REGISTER
       && ! fixed_regs[REGNO (dest)]
       && CLASS_LIKELY_SPILLED_P (REGNO_REG_CLASS (REGNO (dest))))))
    return 1;

  return 0;
}
