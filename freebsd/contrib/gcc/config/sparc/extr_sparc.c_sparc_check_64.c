
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;




 scalar_t__ DImode ;
 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;



 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int REG ;
 scalar_t__ REGNO (scalar_t__) ;
 int REG_N_SETS (scalar_t__) ;
 int SET ;
 int SET_DEST (scalar_t__) ;
 int SImode ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 scalar_t__ flag_expensive_optimizations ;
 int gcc_assert (int) ;
 scalar_t__ gen_rtx_REG (int ,scalar_t__) ;
 scalar_t__ get_last_insn_anywhere () ;
 int reg_overlap_mentioned_p (int ,scalar_t__) ;
 int rtx_equal_p (scalar_t__,int ) ;
 int set_extends (scalar_t__) ;

int
sparc_check_64 (rtx x, rtx insn)
{




  int set_once = 0;
  rtx y = x;

  gcc_assert (GET_CODE (x) == REG);

  if (GET_MODE (x) == DImode)
    y = gen_rtx_REG (SImode, REGNO (x) + WORDS_BIG_ENDIAN);

  if (flag_expensive_optimizations
      && REG_N_SETS (REGNO (y)) == 1)
    set_once = 1;

  if (insn == 0)
    {
      if (set_once)
 insn = get_last_insn_anywhere ();
      else
 return 0;
    }

  while ((insn = PREV_INSN (insn)))
    {
      switch (GET_CODE (insn))
 {
 case 129:
 case 128:
   break;
 case 131:
 case 132:
 default:
   if (! set_once)
     return 0;
   break;
 case 130:
   {
     rtx pat = PATTERN (insn);
     if (GET_CODE (pat) != SET)
       return 0;
     if (rtx_equal_p (x, SET_DEST (pat)))
       return set_extends (insn);
     if (y && rtx_equal_p (y, SET_DEST (pat)))
       return set_extends (insn);
     if (reg_overlap_mentioned_p (SET_DEST (pat), y))
       return 0;
   }
 }
    }
  return 0;
}
