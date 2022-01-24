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
typedef  void* tree ;
struct tree_niter_desc {void* assumptions; } ;
struct TYPE_6__ {void* base; void* step; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* boolean_type_node ; 
 void* FUNC2 (void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*,TYPE_1__*,TYPE_1__*,struct tree_niter_desc*,int) ; 
 scalar_t__ FUNC6 (void*) ; 

__attribute__((used)) static bool
FUNC7 (tree type, affine_iv *iv0, affine_iv *iv1,
			 struct tree_niter_desc *niter, bool never_infinite)
{
  tree assumption;

  /* Say that IV0 is the control variable.  Then IV0 <= IV1 iff
     IV0 < IV1 + 1, assuming that IV1 is not equal to the greatest
     value of the type.  This we must know anyway, since if it is
     equal to this value, the loop rolls forever.  */

  if (!never_infinite)
    {
      if (FUNC4 (iv0->step))
	assumption = FUNC3 (NE_EXPR, boolean_type_node,
				  iv1->base, FUNC0 (type));
      else
	assumption = FUNC3 (NE_EXPR, boolean_type_node,
				  iv0->base, FUNC1 (type));

      if (FUNC6 (assumption))
	return false;
      if (!FUNC4 (assumption))
	niter->assumptions = FUNC3 (TRUTH_AND_EXPR, boolean_type_node,
					  niter->assumptions, assumption);
    }

  if (FUNC4 (iv0->step))
    iv1->base = FUNC3 (PLUS_EXPR, type,
			     iv1->base, FUNC2 (type, 1));
  else
    iv0->base = FUNC3 (MINUS_EXPR, type,
			     iv0->base, FUNC2 (type, 1));
  return FUNC5 (type, iv0, iv1, niter, never_infinite);
}