
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef scalar_t__ regset ;


 int COMPARISON_P (scalar_t__) ;
 int altered_reg_used ;
 scalar_t__ canon_condition (scalar_t__) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const_true_rtx ;
 scalar_t__ for_each_rtx (scalar_t__*,int ,scalar_t__) ;
 scalar_t__ implies_p (scalar_t__,scalar_t__) ;
 scalar_t__ reversed_condition (scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

void
simplify_using_condition (rtx cond, rtx *expr, regset altered)
{
  rtx rev, reve, exp = *expr;

  if (!COMPARISON_P (exp))
    return;



  if (altered
      && for_each_rtx (&cond, altered_reg_used, altered))
    return;

  rev = reversed_condition (cond);
  reve = reversed_condition (exp);

  cond = canon_condition (cond);
  exp = canon_condition (exp);
  if (rev)
    rev = canon_condition (rev);
  if (reve)
    reve = canon_condition (reve);

  if (rtx_equal_p (exp, cond))
    {
      *expr = const_true_rtx;
      return;
    }


  if (rev && rtx_equal_p (exp, rev))
    {
      *expr = const0_rtx;
      return;
    }

  if (implies_p (cond, exp))
    {
      *expr = const_true_rtx;
      return;
    }

  if (reve && implies_p (cond, reve))
    {
      *expr = const0_rtx;
      return;
    }



  if (rev && implies_p (exp, rev))
    {
      *expr = const0_rtx;
      return;
    }


  if (rev && reve && implies_p (reve, rev))
    {
      *expr = const_true_rtx;
      return;
    }



  return;
}
