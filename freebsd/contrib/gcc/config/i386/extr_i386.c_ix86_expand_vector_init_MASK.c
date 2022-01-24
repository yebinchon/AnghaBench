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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int,int,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC12 (int,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 

void
FUNC14 (bool mmx_ok, rtx target, rtx vals)
{
  enum machine_mode mode = FUNC2 (target);
  enum machine_mode inner_mode = FUNC3 (mode);
  int n_elts = FUNC4 (mode);
  int n_var = 0, one_var = -1;
  bool all_same = true, all_const_zero = true;
  int i;
  rtx x;

  for (i = 0; i < n_elts; ++i)
    {
      x = FUNC6 (vals, 0, i);
      if (!FUNC1 (x))
	n_var++, one_var = i;
      else if (x != FUNC0 (inner_mode))
	all_const_zero = false;
      if (i > 0 && !FUNC13 (x, FUNC6 (vals, 0, 0)))
	all_same = false;
    }

  /* Constants are best loaded from the constant pool.  */
  if (n_var == 0)
    {
      FUNC7 (target, FUNC8 (mode, FUNC5 (vals, 0)));
      return;
    }

  /* If all values are identical, broadcast the value.  */
  if (all_same
      && FUNC9 (mmx_ok, mode, target,
					    FUNC6 (vals, 0, 0)))
    return;

  /* Values where only one field is non-constant are best loaded from
     the pool and overwritten via move later.  */
  if (n_var == 1)
    {
      if (all_const_zero
	  && FUNC11 (mmx_ok, mode, target,
						  FUNC6 (vals, 0, one_var),
						  one_var))
	return;

      if (FUNC12 (mmx_ok, mode, target, vals, one_var))
	return;
    }

  FUNC10 (mmx_ok, mode, target, vals);
}