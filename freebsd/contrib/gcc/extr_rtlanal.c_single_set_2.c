
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;



 int GET_CODE (int *) ;
 int * NULL_RTX ;
 scalar_t__ PARALLEL ;
 int REG_UNUSED ;

 int SET_DEST (int *) ;

 int * XVECEXP (int *,int ,int) ;
 int XVECLEN (int *,int ) ;
 int find_reg_note (int *,int ,int ) ;
 int side_effects_p (int *) ;

rtx
single_set_2 (rtx insn, rtx pat)
{
  rtx set = ((void*)0);
  int set_verified = 1;
  int i;

  if (GET_CODE (pat) == PARALLEL)
    {
      for (i = 0; i < XVECLEN (pat, 0); i++)
 {
   rtx sub = XVECEXP (pat, 0, i);
   switch (GET_CODE (sub))
     {
     case 128:
     case 130:
       break;

     case 129:
       if (!set_verified)
  {
    if (find_reg_note (insn, REG_UNUSED, SET_DEST (set))
        && !side_effects_p (set))
      set = ((void*)0);
    else
      set_verified = 1;
  }
       if (!set)
  set = sub, set_verified = 0;
       else if (!find_reg_note (insn, REG_UNUSED, SET_DEST (sub))
         || side_effects_p (sub))
  return NULL_RTX;
       break;

     default:
       return NULL_RTX;
     }
 }
    }
  return set;
}
