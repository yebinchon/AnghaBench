
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant {unsigned int eqto; } ;
struct df_ref {int dummy; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;





 int GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;



 int XEXP (int ,int) ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int df ;
 struct df_ref* df_find_use (int ,int ,int ) ;
 int gcc_assert (int) ;
 struct invariant* invariant_for_use (struct df_ref*) ;
 int rtx_equal_p (int ,int ) ;

__attribute__((used)) static bool
invariant_expr_equal_p (rtx insn1, rtx e1, rtx insn2, rtx e2)
{
  enum rtx_code code = GET_CODE (e1);
  int i, j;
  const char *fmt;
  struct df_ref *use1, *use2;
  struct invariant *inv1 = ((void*)0), *inv2 = ((void*)0);
  rtx sub1, sub2;




  if (code != GET_CODE (e2) || GET_MODE (e1) != GET_MODE (e2))
    return 0;

  switch (code)
    {
    case 131:
    case 132:
    case 128:
    case 133:
    case 130:
      return rtx_equal_p (e1, e2);

    case 129:
      use1 = df_find_use (df, insn1, e1);
      use2 = df_find_use (df, insn2, e2);
      if (use1)
 inv1 = invariant_for_use (use1);
      if (use2)
 inv2 = invariant_for_use (use2);

      if (!inv1 && !inv2)
 return rtx_equal_p (e1, e2);

      if (!inv1 || !inv2)
 return 0;

      gcc_assert (inv1->eqto != ~0u);
      gcc_assert (inv2->eqto != ~0u);
      return inv1->eqto == inv2->eqto;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   sub1 = XEXP (e1, i);
   sub2 = XEXP (e2, i);

   if (!invariant_expr_equal_p (insn1, sub1, insn2, sub2))
     return 0;
 }

      else if (fmt[i] == 'E')
 {
   if (XVECLEN (e1, i) != XVECLEN (e2, i))
     return 0;

   for (j = 0; j < XVECLEN (e1, i); j++)
     {
       sub1 = XVECEXP (e1, i, j);
       sub2 = XVECEXP (e2, i, j);

       if (!invariant_expr_equal_p (insn1, sub1, insn2, sub2))
  return 0;
     }
 }
      else if (fmt[i] == 'i' || fmt[i] == 'n')
 {
   if (XINT (e1, i) != XINT (e2, i))
     return 0;
 }

      else
 return 0;
    }

  return 1;
}
