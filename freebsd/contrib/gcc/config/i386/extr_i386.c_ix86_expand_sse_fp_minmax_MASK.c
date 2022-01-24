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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LT ; 
 int SMAX ; 
 int SMIN ; 
 int UNGE ; 
 int UNSPEC_IEEE_MAX ; 
 int UNSPEC_IEEE_MIN ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_finite_math_only ; 
 int /*<<< orphan*/  flag_unsafe_math_optimizations ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (rtx dest, enum rtx_code code, rtx cmp_op0,
			   rtx cmp_op1, rtx if_true, rtx if_false)
{
  enum machine_mode mode;
  bool is_min;
  rtx tmp;

  if (code == LT)
    ;
  else if (code == UNGE)
    {
      tmp = if_true;
      if_true = if_false;
      if_false = tmp;
    }
  else
    return false;

  if (FUNC7 (cmp_op0, if_true) && FUNC7 (cmp_op1, if_false))
    is_min = true;
  else if (FUNC7 (cmp_op1, if_true) && FUNC7 (cmp_op0, if_false))
    is_min = false;
  else
    return false;

  mode = FUNC0 (dest);

  /* We want to check HONOR_NANS and HONOR_SIGNED_ZEROS here,
     but MODE may be a vector mode and thus not appropriate.  */
  if (!flag_finite_math_only || !flag_unsafe_math_optimizations)
    {
      int u = is_min ? UNSPEC_IEEE_MIN : UNSPEC_IEEE_MAX;
      rtvec v;

      if_true = FUNC2 (mode, if_true);
      v = FUNC3 (2, if_true, if_false);
      tmp = FUNC5 (mode, v, u);
    }
  else
    {
      code = is_min ? SMIN : SMAX;
      tmp = FUNC6 (code, mode, if_true, if_false);
    }

  FUNC1 (FUNC4 (VOIDmode, dest, tmp));
  return true;
}