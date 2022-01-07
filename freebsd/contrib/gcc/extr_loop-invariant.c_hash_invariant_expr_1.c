
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant {unsigned int eqto; } ;
struct df_ref {int dummy; } ;
typedef int rtx ;
typedef int hashval_t ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;





 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;



 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int df ;
 struct df_ref* df_find_use (int ,int ,int ) ;
 int gcc_assert (int) ;
 int hash_rtx (int ,int ,int*,int *,int) ;
 struct invariant* invariant_for_use (struct df_ref*) ;

__attribute__((used)) static hashval_t
hash_invariant_expr_1 (rtx insn, rtx x)
{
  enum rtx_code code = GET_CODE (x);
  int i, j;
  const char *fmt;
  hashval_t val = code;
  int do_not_record_p;
  struct df_ref *use;
  struct invariant *inv;

  switch (code)
    {
    case 131:
    case 132:
    case 128:
    case 133:
    case 130:
      return hash_rtx (x, GET_MODE (x), &do_not_record_p, ((void*)0), 0);

    case 129:
      use = df_find_use (df, insn, x);
      if (!use)
 return hash_rtx (x, GET_MODE (x), &do_not_record_p, ((void*)0), 0);
      inv = invariant_for_use (use);
      if (!inv)
 return hash_rtx (x, GET_MODE (x), &do_not_record_p, ((void*)0), 0);

      gcc_assert (inv->eqto != ~0u);
      return inv->eqto;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 val ^= hash_invariant_expr_1 (insn, XEXP (x, i));
      else if (fmt[i] == 'E')
 {
   for (j = 0; j < XVECLEN (x, i); j++)
     val ^= hash_invariant_expr_1 (insn, XVECEXP (x, i, j));
 }
      else if (fmt[i] == 'i' || fmt[i] == 'n')
 val ^= XINT (x, i);
    }

  return val;
}
