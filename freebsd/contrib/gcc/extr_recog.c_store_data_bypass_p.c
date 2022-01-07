
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int) ;
 int MEM_P (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int) ;
 scalar_t__ SET ;
 int SET_DEST (int) ;
 int XVECEXP (int,int ,int) ;
 int XVECLEN (int,int ) ;
 int gcc_assert (int) ;
 scalar_t__ reg_mentioned_p (int ,int ) ;
 int single_set (int) ;

int
store_data_bypass_p (rtx out_insn, rtx in_insn)
{
  rtx out_set, in_set;

  in_set = single_set (in_insn);
  gcc_assert (in_set);

  if (!MEM_P (SET_DEST (in_set)))
    return 0;

  out_set = single_set (out_insn);
  if (out_set)
    {
      if (reg_mentioned_p (SET_DEST (out_set), SET_DEST (in_set)))
 return 0;
    }
  else
    {
      rtx out_pat;
      int i;

      out_pat = PATTERN (out_insn);
      gcc_assert (GET_CODE (out_pat) == PARALLEL);

      for (i = 0; i < XVECLEN (out_pat, 0); i++)
 {
   rtx exp = XVECEXP (out_pat, 0, i);

   if (GET_CODE (exp) == CLOBBER)
     continue;

   gcc_assert (GET_CODE (exp) == SET);

   if (reg_mentioned_p (SET_DEST (exp), SET_DEST (in_set)))
     return 0;
 }
    }

  return 1;
}
