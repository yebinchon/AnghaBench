#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  scalar_t__ regset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  altered_reg_used ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const_true_rtx ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

void
FUNC6 (rtx cond, rtx *expr, regset altered)
{
  rtx rev, reve, exp = *expr;

  if (!FUNC0 (exp))
    return;

  /* If some register gets altered later, we do not really speak about its
     value at the time of comparison.  */
  if (altered
      && FUNC2 (&cond, altered_reg_used, altered))
    return;

  rev = FUNC4 (cond);
  reve = FUNC4 (exp);

  cond = FUNC1 (cond);
  exp = FUNC1 (exp);
  if (rev)
    rev = FUNC1 (rev);
  if (reve)
    reve = FUNC1 (reve);

  if (FUNC5 (exp, cond))
    {
      *expr = const_true_rtx;
      return;
    }


  if (rev && FUNC5 (exp, rev))
    {
      *expr = const0_rtx;
      return;
    }

  if (FUNC3 (cond, exp))
    {
      *expr = const_true_rtx;
      return;
    }
  
  if (reve && FUNC3 (cond, reve))
    {
      *expr = const0_rtx;
      return;
    }

  /* A proof by contradiction.  If *EXPR implies (not cond), *EXPR must
     be false.  */
  if (rev && FUNC3 (exp, rev))
    {
      *expr = const0_rtx;
      return;
    }

  /* Similarly, If (not *EXPR) implies (not cond), *EXPR must be true.  */
  if (rev && reve && FUNC3 (reve, rev))
    {
      *expr = const_true_rtx;
      return;
    }

  /* We would like to have some other tests here.  TODO.  */

  return;
}