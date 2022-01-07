
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BLKmode ;
 scalar_t__ CALL_INSN_FUNCTION_USAGE (scalar_t__) ;
 int CALL_P (scalar_t__) ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ SCRATCH ;
 scalar_t__ USE ;
 scalar_t__ XEXP (scalar_t__,int) ;

int
pure_call_p (rtx insn)
{
  rtx link;

  if (!CALL_P (insn) || ! CONST_OR_PURE_CALL_P (insn))
    return 0;


  for (link = CALL_INSN_FUNCTION_USAGE (insn); link; link = XEXP (link, 1))
    {
      rtx u, m;

      if (GET_CODE (u = XEXP (link, 0)) == USE
   && MEM_P (m = XEXP (u, 0)) && GET_MODE (m) == BLKmode
   && GET_CODE (XEXP (m, 0)) == SCRATCH)
 return 1;
    }

  return 0;
}
