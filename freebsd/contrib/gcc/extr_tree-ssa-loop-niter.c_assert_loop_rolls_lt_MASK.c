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
struct tree_niter_desc {void* may_be_zero; void* assumptions; } ;
struct TYPE_4__ {void* base; void* step; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  GT_EXPR ; 
 int /*<<< orphan*/  LE_EXPR ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 int /*<<< orphan*/  TRUTH_OR_EXPR ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* boolean_true_node ; 
 void* boolean_type_node ; 
 void* FUNC3 (void*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static void
FUNC7 (tree type, affine_iv *iv0, affine_iv *iv1,
		      struct tree_niter_desc *niter)
{
  tree assumption = boolean_true_node, bound, diff;
  tree mbz, mbzl, mbzr;

  if (FUNC5 (iv0->step))
    {
      diff = FUNC4 (MINUS_EXPR, type,
			  iv0->step, FUNC3 (type, 1));

      /* We need to know that iv0->base >= MIN + iv0->step - 1.  Since
	 0 address never belongs to any object, we can assume this for
	 pointers.  */
      if (!FUNC0 (type))
	{
	  bound = FUNC4 (PLUS_EXPR, type,
			       FUNC2 (type), diff);
	  assumption = FUNC4 (GE_EXPR, boolean_type_node,
				    iv0->base, bound);
	}

      /* And then we can compute iv0->base - diff, and compare it with
	 iv1->base.  */      
      mbzl = FUNC4 (MINUS_EXPR, type, iv0->base, diff);
      mbzr = iv1->base;
    }
  else
    {
      diff = FUNC4 (PLUS_EXPR, type,
			  iv1->step, FUNC3 (type, 1));

      if (!FUNC0 (type))
	{
	  bound = FUNC4 (PLUS_EXPR, type,
			       FUNC1 (type), diff);
	  assumption = FUNC4 (LE_EXPR, boolean_type_node,
				    iv1->base, bound);
	}

      mbzl = iv0->base;
      mbzr = FUNC4 (MINUS_EXPR, type, iv1->base, diff);
    }

  mbz = FUNC4 (GT_EXPR, boolean_type_node, mbzl, mbzr);

  if (!FUNC5 (assumption))
    niter->assumptions = FUNC4 (TRUTH_AND_EXPR, boolean_type_node,
				      niter->assumptions, assumption);
  if (!FUNC6 (mbz))
    niter->may_be_zero = FUNC4 (TRUTH_OR_EXPR, boolean_type_node,
				      niter->may_be_zero, mbz);
}