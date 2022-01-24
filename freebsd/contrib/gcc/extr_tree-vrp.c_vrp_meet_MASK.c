#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ type; scalar_t__ equiv; int /*<<< orphan*/  min; int /*<<< orphan*/  max; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VR_ANTI_RANGE ; 
 scalar_t__ VR_RANGE ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16 (value_range_t *vr0, value_range_t *vr1)
{
  if (vr0->type == VR_UNDEFINED)
    {
      FUNC5 (vr0, vr1);
      return;
    }

  if (vr1->type == VR_UNDEFINED)
    {
      /* Nothing to do.  VR0 already has the resulting range.  */
      return;
    }

  if (vr0->type == VR_VARYING)
    {
      /* Nothing to do.  VR0 already has the resulting range.  */
      return;
    }

  if (vr1->type == VR_VARYING)
    {
      FUNC11 (vr0);
      return;
    }

  if (vr0->type == VR_RANGE && vr1->type == VR_RANGE)
    {
      /* If VR0 and VR1 have a non-empty intersection, compute the
	 union of both ranges.  */
      if (FUNC13 (vr0, vr1))
	{
	  int cmp;
	  tree min, max;

	  /* The lower limit of the new range is the minimum of the
	     two ranges.  If they cannot be compared, the result is
	     VARYING.  */
	  cmp = FUNC4 (vr0->min, vr1->min);
	  if (cmp == 0 || cmp == 1)
	    min = vr1->min;
	  else if (cmp == -1)
	    min = vr0->min;
	  else
	    {
	      FUNC11 (vr0);
	      return;
	    }

	  /* Similarly, the upper limit of the new range is the
	     maximum of the two ranges.  If they cannot be compared,
	     the result is VARYING.  */
	  cmp = FUNC4 (vr0->max, vr1->max);
	  if (cmp == 0 || cmp == -1)
	    max = vr1->max;
	  else if (cmp == 1)
	    max = vr0->max;
	  else
	    {
	      FUNC11 (vr0);
	      return;
	    }

	  /* Check for useless ranges.  */
	  if (FUNC0 (FUNC1 (min))
	      && ((FUNC15 (min) || FUNC7 (min))
		  && (FUNC14 (max) || FUNC7 (max))))
	    {
	      FUNC11 (vr0);
	      return;
	    }

	  /* The resulting set of equivalences is the intersection of
	     the two sets.  */
	  if (vr0->equiv && vr1->equiv && vr0->equiv != vr1->equiv)
	    FUNC2 (vr0->equiv, vr1->equiv);
	  else if (vr0->equiv && !vr1->equiv)
	    FUNC3 (vr0->equiv);

	  FUNC9 (vr0, vr0->type, min, max, vr0->equiv);
	}
      else
	goto no_meet;
    }
  else if (vr0->type == VR_ANTI_RANGE && vr1->type == VR_ANTI_RANGE)
    {
      /* Two anti-ranges meet only if they are both identical.  */
      if (FUNC4 (vr0->min, vr1->min) == 0
	  && FUNC4 (vr0->max, vr1->max) == 0
	  && FUNC4 (vr0->min, vr0->max) == 0)
	{
	  /* The resulting set of equivalences is the intersection of
	     the two sets.  */
	  if (vr0->equiv && vr1->equiv && vr0->equiv != vr1->equiv)
	    FUNC2 (vr0->equiv, vr1->equiv);
	  else if (vr0->equiv && !vr1->equiv)
	    FUNC3 (vr0->equiv);
	}
      else
	goto no_meet;
    }
  else if (vr0->type == VR_ANTI_RANGE || vr1->type == VR_ANTI_RANGE)
    {
      /* A numeric range [VAL1, VAL2] and an anti-range ~[VAL3, VAL4]
	 meet only if the ranges have an empty intersection.  The
	 result of the meet operation is the anti-range.  */
      if (!FUNC12 (vr0)
	  && !FUNC12 (vr1)
	  && !FUNC13 (vr0, vr1))
	{
	  /* Copy most of VR1 into VR0.  Don't copy VR1's equivalence
	     set.  We need to compute the intersection of the two
	     equivalence sets.  */
	  if (vr1->type == VR_ANTI_RANGE)
	    FUNC9 (vr0, vr1->type, vr1->min, vr1->max, vr0->equiv);

	  /* The resulting set of equivalences is the intersection of
	     the two sets.  */
	  if (vr0->equiv && vr1->equiv && vr0->equiv != vr1->equiv)
	    FUNC2 (vr0->equiv, vr1->equiv);
	  else if (vr0->equiv && !vr1->equiv)
	    FUNC3 (vr0->equiv);
	}
      else
	goto no_meet;
    }
  else
    FUNC6 ();

  return;

no_meet:
  /* The two range VR0 and VR1 do not meet.  Before giving up and
     setting the result to VARYING, see if we can at least derive a
     useful anti-range.  FIXME, all this nonsense about distinguishing
     anti-ranges from ranges is necessary because of the odd
     semantics of range_includes_zero_p and friends.  */
  if (!FUNC12 (vr0)
      && ((vr0->type == VR_RANGE && !FUNC8 (vr0))
	  || (vr0->type == VR_ANTI_RANGE && FUNC8 (vr0)))
      && !FUNC12 (vr1)
      && ((vr1->type == VR_RANGE && !FUNC8 (vr1))
	  || (vr1->type == VR_ANTI_RANGE && FUNC8 (vr1))))
    {
      FUNC10 (vr0, FUNC1 (vr0->min));

      /* Since this meet operation did not result from the meeting of
	 two equivalent names, VR0 cannot have any equivalences.  */
      if (vr0->equiv)
	FUNC3 (vr0->equiv);
    }
  else
    FUNC11 (vr0);
}