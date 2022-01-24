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
struct tree_niter_desc {void* assumptions; } ;
struct TYPE_4__ {int no_overflow; void* base; void* step; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 int /*<<< orphan*/  FLOOR_MOD_EXPR ; 
 int /*<<< orphan*/  GE_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  LE_EXPR ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 void* boolean_type_node ; 
 void* FUNC4 (void*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 void* FUNC6 (void*,void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*) ; 

__attribute__((used)) static bool
FUNC9 (tree type, affine_iv *iv0, affine_iv *iv1,
		       struct tree_niter_desc *niter, tree step)
{
  tree bound, d, assumption, diff;
  tree niter_type = FUNC1 (step);

  if (FUNC7 (iv0->step))
    {
      /* for (i = iv0->base; i < iv1->base; i += iv0->step) */
      if (iv0->no_overflow)
	return true;

      /* If iv0->base is a constant, we can determine the last value before
	 overflow precisely; otherwise we conservatively assume
	 MAX - STEP + 1.  */

      if (FUNC0 (iv0->base) == INTEGER_CST)
	{
	  d = FUNC5 (MINUS_EXPR, niter_type,
			   FUNC6 (niter_type, FUNC2 (type)),
			   FUNC6 (niter_type, iv0->base));
	  diff = FUNC5 (FLOOR_MOD_EXPR, niter_type, d, step);
	}
      else
	diff = FUNC5 (MINUS_EXPR, niter_type, step,
			    FUNC4 (niter_type, 1));
      bound = FUNC5 (MINUS_EXPR, type,
			   FUNC2 (type), FUNC6 (type, diff));
      assumption = FUNC5 (LE_EXPR, boolean_type_node,
				iv1->base, bound);
    }
  else
    {
      /* for (i = iv1->base; i > iv0->base; i += iv1->step) */
      if (iv1->no_overflow)
	return true;

      if (FUNC0 (iv1->base) == INTEGER_CST)
	{
	  d = FUNC5 (MINUS_EXPR, niter_type,
			   FUNC6 (niter_type, iv1->base),
			   FUNC6 (niter_type, FUNC3 (type)));
	  diff = FUNC5 (FLOOR_MOD_EXPR, niter_type, d, step);
	}
      else
	diff = FUNC5 (MINUS_EXPR, niter_type, step,
			    FUNC4 (niter_type, 1));
      bound = FUNC5 (PLUS_EXPR, type,
			   FUNC3 (type), FUNC6 (type, diff));
      assumption = FUNC5 (GE_EXPR, boolean_type_node,
				iv0->base, bound);
    }

  if (FUNC8 (assumption))
    return false;
  if (!FUNC7 (assumption))
    niter->assumptions = FUNC5 (TRUTH_AND_EXPR, boolean_type_node,
				      niter->assumptions, assumption);
    
  iv0->no_overflow = true;
  iv1->no_overflow = true;
  return true;
}