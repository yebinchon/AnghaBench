#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; scalar_t__ min; scalar_t__ max; } ;
typedef  TYPE_1__ value_range_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ VR_RANGE ; 
 scalar_t__ boolean_false_node ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__,int*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__,int*) ; 
 scalar_t__ FUNC8 (scalar_t__,TYPE_1__*,scalar_t__,int*) ; 
 scalar_t__ FUNC9 (scalar_t__,TYPE_1__*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_1__* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ tcc_comparison ; 

__attribute__((used)) static tree
FUNC13 (tree cond, bool use_equiv_p,
				bool *strict_overflow_p)
{
  FUNC10 (FUNC2 (cond) == SSA_NAME
              || FUNC3 (FUNC2 (cond)) == tcc_comparison);

  if (FUNC2 (cond) == SSA_NAME)
    {
      value_range_t *vr;
      tree retval;

      if (use_equiv_p)
	retval = FUNC6 (NE_EXPR, cond, boolean_false_node,
					  strict_overflow_p);
      else
	{
	  value_range_t *vr = FUNC11 (cond);
	  retval = FUNC8 (NE_EXPR, vr, boolean_false_node,
					     strict_overflow_p);
	}

      /* If COND has a known boolean range, return it.  */
      if (retval)
	return retval;

      /* Otherwise, if COND has a symbolic range of exactly one value,
	 return it.  */
      vr = FUNC11 (cond);
      if (vr->type == VR_RANGE && vr->min == vr->max)
	return vr->min;
    }
  else
    {
      tree op0 = FUNC4 (cond, 0);
      tree op1 = FUNC4 (cond, 1);

      /* We only deal with integral and pointer types.  */
      if (!FUNC0 (FUNC5 (op0))
	  && !FUNC1 (FUNC5 (op0)))
	return NULL_TREE;

      if (use_equiv_p)
	{
	  if (FUNC2 (op0) == SSA_NAME && FUNC2 (op1) == SSA_NAME)
	    return FUNC7 (FUNC2 (cond), op0, op1,
				  strict_overflow_p);
	  else if (FUNC2 (op0) == SSA_NAME)
	    return FUNC6 (FUNC2 (cond), op0, op1,
					    strict_overflow_p);
	  else if (FUNC2 (op1) == SSA_NAME)
	    return (FUNC6
		    (FUNC12 (FUNC2 (cond)), op1, op0,
		     strict_overflow_p));
	}
      else
	{
	  value_range_t *vr0, *vr1;

	  vr0 = (FUNC2 (op0) == SSA_NAME) ? FUNC11 (op0) : NULL;
	  vr1 = (FUNC2 (op1) == SSA_NAME) ? FUNC11 (op1) : NULL;

	  if (vr0 && vr1)
	    return FUNC9 (FUNC2 (cond), vr0, vr1,
				   strict_overflow_p);
	  else if (vr0 && vr1 == NULL)
	    return FUNC8 (FUNC2 (cond), vr0, op1,
					     strict_overflow_p);
	  else if (vr0 == NULL && vr1)
	    return (FUNC8
		    (FUNC12 (FUNC2 (cond)), vr1, op0,
		     strict_overflow_p));
	}
    }

  /* Anything else cannot be computed statically.  */
  return NULL_TREE;
}