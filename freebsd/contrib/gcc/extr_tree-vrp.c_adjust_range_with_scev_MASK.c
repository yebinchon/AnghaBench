#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; scalar_t__ min; scalar_t__ max; int /*<<< orphan*/  equiv; } ;
typedef  TYPE_1__ value_range_t ;
typedef  scalar_t__ tree ;
struct loop {int /*<<< orphan*/  num; } ;
typedef  enum ev_direction { ____Placeholder_ev_direction } ev_direction ;
struct TYPE_6__ {int /*<<< orphan*/ * parray; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int EV_DIR_DECREASES ; 
 int EV_DIR_UNKNOWN ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ VR_ANTI_RANGE ; 
 scalar_t__ VR_RANGE ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,scalar_t__) ; 
 int FUNC7 (scalar_t__,scalar_t__) ; 
 TYPE_3__* current_loops ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 

__attribute__((used)) static void
FUNC20 (value_range_t *vr, struct loop *loop, tree stmt,
			tree var)
{
  tree init, step, chrec, tmin, tmax, min, max, type;
  enum ev_direction dir;

  /* TODO.  Don't adjust anti-ranges.  An anti-range may provide
     better opportunities than a regular range, but I'm not sure.  */
  if (vr->type == VR_ANTI_RANGE)
    return;

  chrec = FUNC10 (loop, FUNC6 (loop, var));
  if (FUNC2 (chrec) != POLYNOMIAL_CHREC)
    return;

  init = FUNC9 (chrec, loop->num);
  step = FUNC8 (chrec, loop->num);

  /* If STEP is symbolic, we can't know whether INIT will be the
     minimum or maximum value in the range.  Also, unless INIT is
     a simple expression, compare_values and possibly other functions
     in tree-vrp won't be able to handle it.  */
  if (step == NULL_TREE
      || !FUNC11 (step)
      || !FUNC19 (init))
    return;

  dir = FUNC15 (chrec);
  if (/* Do not adjust ranges if we do not know whether the iv increases
	 or decreases,  ... */
      dir == EV_DIR_UNKNOWN
      /* ... or if it may wrap.  */
      || FUNC16 (init, step, stmt,
				current_loops->parray[FUNC0 (chrec)],
				true))
    return;

  type = FUNC3 (var);

  /* If we see a pointer type starting at a constant, then we have an
     unusual ivopt.  It may legitimately wrap.  */
  if (FUNC1 (type) && FUNC11 (init))
    return;

  /* We use TYPE_MIN_VALUE and TYPE_MAX_VALUE here instead of
     negative_overflow_infinity and positive_overflow_infinity,
     because we have concluded that the loop probably does not
     wrap.  */

  if (FUNC1 (type) || !FUNC5 (type))
    tmin = FUNC14 (type, type);
  else
    tmin = FUNC5 (type);
  if (FUNC1 (type) || !FUNC4 (type))
    tmax = FUNC18 (type, type);
  else
    tmax = FUNC4 (type);

  if (vr->type == VR_VARYING || vr->type == VR_UNDEFINED)
    {
      min = tmin;
      max = tmax;

      /* For VARYING or UNDEFINED ranges, just about anything we get
	 from scalar evolutions should be better.  */

      if (dir == EV_DIR_DECREASES)
	max = init;
      else
	min = init;

      /* If we would create an invalid range, then just assume we
	 know absolutely nothing.  This may be over-conservative,
	 but it's clearly safe, and should happen only in unreachable
         parts of code, or for invalid programs.  */
      if (FUNC7 (min, max) == 1)
	return;

      FUNC17 (vr, VR_RANGE, min, max, vr->equiv);
    }
  else if (vr->type == VR_RANGE)
    {
      min = vr->min;
      max = vr->max;

      if (dir == EV_DIR_DECREASES)
	{
	  /* INIT is the maximum value.  If INIT is lower than VR->MAX
	     but no smaller than VR->MIN, set VR->MAX to INIT.  */
	  if (FUNC7 (init, max) == -1)
	    {
	      max = init;

	      /* If we just created an invalid range with the minimum
		 greater than the maximum, we fail conservatively.
		 This should happen only in unreachable
		 parts of code, or for invalid programs.  */
	      if (FUNC7 (min, max) == 1)
		return;
	    }

	  /* According to the loop information, the variable does not
	     overflow.  If we think it does, probably because of an
	     overflow due to arithmetic on a different INF value,
	     reset now.  */
	  if (FUNC12 (min))
	    min = tmin;
	}
      else
	{
	  /* If INIT is bigger than VR->MIN, set VR->MIN to INIT.  */
	  if (FUNC7 (init, min) == 1)
	    {
	      min = init;

	      /* Again, avoid creating invalid range by failing.  */
	      if (FUNC7 (min, max) == 1)
		return;
	    }

	  if (FUNC13 (max))
	    max = tmax;
	}

      FUNC17 (vr, VR_RANGE, min, max, vr->equiv);
    }
}