
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ REG_FUNCTION_VALUE_P (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 int apply_change_group () ;
 scalar_t__ asm_noperands (scalar_t__) ;
 int cselib_invalidate_rtx (scalar_t__) ;
 int delete_insn_and_edges (scalar_t__) ;
 scalar_t__ reload_cse_noop_set_p (scalar_t__) ;
 int reload_cse_simplify_operands (scalar_t__,scalar_t__) ;
 scalar_t__ reload_cse_simplify_set (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
reload_cse_simplify (rtx insn, rtx testreg)
{
  rtx body = PATTERN (insn);

  if (GET_CODE (body) == SET)
    {
      int count = 0;






      count += reload_cse_simplify_set (body, insn);

      if (!count && reload_cse_noop_set_p (body))
 {
   rtx value = SET_DEST (body);
   if (REG_P (value)
       && ! REG_FUNCTION_VALUE_P (value))
     value = 0;
   delete_insn_and_edges (insn);
   return;
 }

      if (count > 0)
 apply_change_group ();
      else
 reload_cse_simplify_operands (insn, testreg);
    }
  else if (GET_CODE (body) == PARALLEL)
    {
      int i;
      int count = 0;
      rtx value = NULL_RTX;




      if (asm_noperands (body) >= 0)
 {
   for (i = XVECLEN (body, 0) - 1; i >= 0; --i)
     {
       rtx part = XVECEXP (body, 0, i);
       if (GET_CODE (part) == CLOBBER && REG_P (XEXP (part, 0)))
  cselib_invalidate_rtx (XEXP (part, 0));
     }
 }



      for (i = XVECLEN (body, 0) - 1; i >= 0; --i)
 {
   rtx part = XVECEXP (body, 0, i);
   if (GET_CODE (part) == SET)
     {
       if (! reload_cse_noop_set_p (part))
  break;
       if (REG_P (SET_DEST (part))
    && REG_FUNCTION_VALUE_P (SET_DEST (part)))
  {
    if (value)
      break;
    value = SET_DEST (part);
  }
     }
   else if (GET_CODE (part) != CLOBBER)
     break;
 }

      if (i < 0)
 {
   delete_insn_and_edges (insn);

   return;
 }


      for (i = XVECLEN (body, 0) - 1; i >= 0; --i)
 if (GET_CODE (XVECEXP (body, 0, i)) == SET)
   count += reload_cse_simplify_set (XVECEXP (body, 0, i), insn);

      if (count > 0)
 apply_change_group ();
      else
 reload_cse_simplify_operands (insn, testreg);
    }
}
