#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_3__ {void* step; void* base; } ;
struct tree_niter_desc {void* assumptions; void* niter; int /*<<< orphan*/  cmp; void* bound; TYPE_1__ control; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  EXACT_DIV_EXPR ; 
 int /*<<< orphan*/  FLOOR_MOD_EXPR ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 scalar_t__ FUNC0 (void*) ; 
 void* boolean_type_node ; 
 void* FUNC1 (void*,int) ; 
 void* FUNC2 (void*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 void* FUNC6 (void*,void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 void* FUNC8 (void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (void*) ; 
 scalar_t__ FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*,int) ; 
 void* FUNC13 (void*) ; 

__attribute__((used)) static bool
FUNC14 (tree type, affine_iv *iv, tree final,
			 struct tree_niter_desc *niter, bool never_infinite)
{
  tree niter_type = FUNC13 (type);
  tree s, c, d, bits, assumption, tmp, bound;

  niter->control = *iv;
  niter->bound = final;
  niter->cmp = NE_EXPR;

  /* Rearrange the terms so that we get inequality s * i <> c, with s
     positive.  Also cast everything to the unsigned type.  */
  if (FUNC11 (iv->step))
    {
      s = FUNC6 (niter_type,
			FUNC4 (NEGATE_EXPR, type, iv->step));
      c = FUNC5 (MINUS_EXPR, niter_type,
		       FUNC6 (niter_type, iv->base),
		       FUNC6 (niter_type, final));
    }
  else
    {
      s = FUNC6 (niter_type, iv->step);
      c = FUNC5 (MINUS_EXPR, niter_type,
		       FUNC6 (niter_type, final),
		       FUNC6 (niter_type, iv->base));
    }

  /* First the trivial cases -- when the step is 1.  */
  if (FUNC7 (s))
    {
      niter->niter = c;
      return true;
    }

  /* Let nsd (step, size of mode) = d.  If d does not divide c, the loop
     is infinite.  Otherwise, the number of iterations is
     (inverse(s/d) * (c/d)) mod (size of mode/d).  */
  bits = FUNC10 (s);
  bound = FUNC2 (niter_type,
			       (FUNC0 (niter_type)
				- FUNC12 (bits, 1)));

  d = FUNC3 (LSHIFT_EXPR, niter_type,
			       FUNC1 (niter_type, 1), bits);
  s = FUNC3 (RSHIFT_EXPR, niter_type, s, bits);

  if (!never_infinite)
    {
      /* If we cannot assume that the loop is not infinite, record the
	 assumptions for divisibility of c.  */
      assumption = FUNC5 (FLOOR_MOD_EXPR, niter_type, c, d);
      assumption = FUNC5 (EQ_EXPR, boolean_type_node,
				assumption, FUNC1 (niter_type, 0));
      if (!FUNC9 (assumption))
	niter->assumptions = FUNC5 (TRUTH_AND_EXPR, boolean_type_node,
					  niter->assumptions, assumption);
    }
      
  c = FUNC5 (EXACT_DIV_EXPR, niter_type, c, d);
  tmp = FUNC5 (MULT_EXPR, niter_type, c, FUNC8 (s, bound));
  niter->niter = FUNC5 (BIT_AND_EXPR, niter_type, tmp, bound);
  return true;
}