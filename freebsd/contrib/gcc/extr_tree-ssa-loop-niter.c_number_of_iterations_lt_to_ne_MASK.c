#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct tree_niter_desc {void* assumptions; void* may_be_zero; } ;
struct TYPE_4__ {void* step; void* base; int /*<<< orphan*/  no_overflow; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 int /*<<< orphan*/  FLOOR_MOD_EXPR ; 
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  GT_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  LE_EXPR ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 int /*<<< orphan*/  TRUTH_OR_EXPR ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 void* boolean_true_node ; 
 void* boolean_type_node ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 void* FUNC5 (void*,void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 

__attribute__((used)) static bool
FUNC8 (tree type, affine_iv *iv0, affine_iv *iv1,
			       struct tree_niter_desc *niter,
			       tree *delta, tree step)
{
  tree niter_type = FUNC1 (step);
  tree mod = FUNC4 (FLOOR_MOD_EXPR, niter_type, *delta, step);
  tree tmod;
  tree assumption = boolean_true_node, bound, noloop;

  if (FUNC0 (mod) != INTEGER_CST)
    return false;
  if (FUNC6 (mod))
    mod = FUNC4 (MINUS_EXPR, niter_type, step, mod);
  tmod = FUNC5 (type, mod);

  if (FUNC6 (iv0->step))
    {
      /* The final value of the iv is iv1->base + MOD, assuming that this
	 computation does not overflow, and that
	 iv0->base <= iv1->base + MOD.  */
      if (!iv1->no_overflow && !FUNC7 (mod))
	{
	  bound = FUNC4 (MINUS_EXPR, type,
			       FUNC2 (type), tmod);
	  assumption = FUNC4 (LE_EXPR, boolean_type_node,
				    iv1->base, bound);
	  if (FUNC7 (assumption))
	    return false;
	}
      noloop = FUNC4 (GT_EXPR, boolean_type_node,
			    iv0->base,
			    FUNC4 (PLUS_EXPR, type,
					 iv1->base, tmod));
    }
  else
    {
      /* The final value of the iv is iv0->base - MOD, assuming that this
	 computation does not overflow, and that
	 iv0->base - MOD <= iv1->base. */
      if (!iv0->no_overflow && !FUNC7 (mod))
	{
	  bound = FUNC4 (PLUS_EXPR, type,
			       FUNC3 (type), tmod);
	  assumption = FUNC4 (GE_EXPR, boolean_type_node,
				    iv0->base, bound);
	  if (FUNC7 (assumption))
	    return false;
	}
      noloop = FUNC4 (GT_EXPR, boolean_type_node,
			    FUNC4 (MINUS_EXPR, type,
					 iv0->base, tmod),
			    iv1->base);
    }

  if (!FUNC6 (assumption))
    niter->assumptions = FUNC4 (TRUTH_AND_EXPR, boolean_type_node,
				      niter->assumptions,
				      assumption);
  if (!FUNC7 (noloop))
    niter->may_be_zero = FUNC4 (TRUTH_OR_EXPR, boolean_type_node,
				      niter->may_be_zero,
				      noloop);
  *delta = FUNC4 (PLUS_EXPR, niter_type, *delta, mod);
  return true;
}