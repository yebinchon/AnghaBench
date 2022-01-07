
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ PLUS ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 scalar_t__ get_reg_known_value (scalar_t__) ;
 scalar_t__ plus_constant (scalar_t__,int ) ;
 scalar_t__ replace_equiv_address_nv (scalar_t__,scalar_t__) ;

rtx
canon_rtx (rtx x)
{

  if (REG_P (x) && REGNO (x) >= FIRST_PSEUDO_REGISTER)
    {
      rtx t = get_reg_known_value (REGNO (x));
      if (t == x)
 return x;
      if (t)
 return canon_rtx (t);
    }

  if (GET_CODE (x) == PLUS)
    {
      rtx x0 = canon_rtx (XEXP (x, 0));
      rtx x1 = canon_rtx (XEXP (x, 1));

      if (x0 != XEXP (x, 0) || x1 != XEXP (x, 1))
 {
   if (GET_CODE (x0) == CONST_INT)
     return plus_constant (x1, INTVAL (x0));
   else if (GET_CODE (x1) == CONST_INT)
     return plus_constant (x0, INTVAL (x1));
   return gen_rtx_PLUS (GET_MODE (x), x0, x1);
 }
    }





  else if (MEM_P (x))
    x = replace_equiv_address_nv (x, canon_rtx (XEXP (x, 0)));

  return x;
}
