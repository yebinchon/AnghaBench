#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct tree_niter_desc {void* niter; int /*<<< orphan*/  cmp; void* bound; void* additional_info; int /*<<< orphan*/  may_be_zero; void* assumptions; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_11__ {int no_overflow; int /*<<< orphan*/  base; void* step; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MARK ; 
 int GE_EXPR ; 
 int GT_EXPR ; 
#define  LE_EXPR 130 
#define  LT_EXPR 129 
 int /*<<< orphan*/  MINUS_EXPR ; 
#define  NE_EXPR 128 
 void* NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  boolean_false_node ; 
 void* boolean_true_node ; 
 int /*<<< orphan*/  boolean_type_node ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,struct tree_niter_desc*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,struct tree_niter_desc*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,struct tree_niter_desc*,int) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (void*) ; 

__attribute__((used)) static bool
FUNC14 (tree type, affine_iv *iv0, enum tree_code code,
			   affine_iv *iv1, struct tree_niter_desc *niter,
			   bool only_exit)
{
  bool never_infinite;

  /* The meaning of these assumptions is this:
     if !assumptions
       then the rest of information does not have to be valid
     if may_be_zero then the loop does not roll, even if
       niter != 0.  */
  niter->assumptions = boolean_true_node;
  niter->may_be_zero = boolean_false_node;
  niter->niter = NULL_TREE;
  niter->additional_info = boolean_true_node;

  niter->bound = NULL_TREE;
  niter->cmp = ERROR_MARK;

  /* Make < comparison from > ones, and for NE_EXPR comparisons, ensure that
     the control variable is on lhs.  */
  if (code == GE_EXPR || code == GT_EXPR
      || (code == NE_EXPR && FUNC13 (iv0->step)))
    {
      FUNC1 (iv0, iv1);
      code = FUNC10 (code);
    }

  if (!only_exit)
    {
      /* If this is not the only possible exit from the loop, the information
	 that the induction variables cannot overflow as derived from
	 signedness analysis cannot be relied upon.  We use them e.g. in the
	 following way:  given loop for (i = 0; i <= n; i++), if i is
	 signed, it cannot overflow, thus this loop is equivalent to
	 for (i = 0; i < n + 1; i++);  however, if n == MAX, but the loop
	 is exited in some other way before i overflows, this transformation
	 is incorrect (the new loop exits immediately).  */
      iv0->no_overflow = false;
      iv1->no_overflow = false;
    }

  if (FUNC0 (type))
    {
      /* Comparison of pointers is undefined unless both iv0 and iv1 point
	 to the same object.  If they do, the control variable cannot wrap
	 (as wrap around the bounds of memory will never return a pointer
	 that would be guaranteed to point to the same object, even if we
	 avoid undefined behavior by casting to size_t and back).  The
	 restrictions on pointer arithmetics and comparisons of pointers
	 ensure that using the no-overflow assumptions is correct in this
	 case even if ONLY_EXIT is false.  */
      iv0->no_overflow = true;
      iv1->no_overflow = true;
    }

  /* If the control induction variable does not overflow, the loop obviously
     cannot be infinite.  */
  if (!FUNC13 (iv0->step) && iv0->no_overflow)
    never_infinite = true;
  else if (!FUNC13 (iv1->step) && iv1->no_overflow)
    never_infinite = true;
  else
    never_infinite = false;

  /* We can handle the case when neither of the sides of the comparison is
     invariant, provided that the test is NE_EXPR.  This rarely occurs in
     practice, but it is simple enough to manage.  */
  if (!FUNC13 (iv0->step) && !FUNC13 (iv1->step))
    {
      if (code != NE_EXPR)
	return false;

      iv0->step = FUNC3 (MINUS_EXPR, type,
					   iv0->step, iv1->step);
      iv0->no_overflow = false;
      iv1->step = NULL_TREE;
      iv1->no_overflow = true;
    }

  /* If the result of the comparison is a constant,  the loop is weird.  More
     precise handling would be possible, but the situation is not common enough
     to waste time on it.  */
  if (FUNC13 (iv0->step) && FUNC13 (iv1->step))
    return false;

  /* Ignore loops of while (i-- < 10) type.  */
  if (code != NE_EXPR)
    {
      if (iv0->step && FUNC11 (iv0->step))
	return false;

      if (!FUNC13 (iv1->step) && !FUNC11 (iv1->step))
	return false;
    }

  /* If the loop exits immediately, there is nothing to do.  */
  if (FUNC13 (FUNC4 (code, boolean_type_node, iv0->base, iv1->base)))
    {
      niter->niter = FUNC2 (FUNC12 (type), 0);
      return true;
    }

  /* OK, now we know we have a senseful loop.  Handle several cases, depending
     on what comparison operator is used.  */
  switch (code)
    {
    case NE_EXPR:
      FUNC5 (FUNC13 (iv1->step));
      return FUNC9 (type, iv0, iv1->base, niter, never_infinite);
    case LT_EXPR:
      return FUNC8 (type, iv0, iv1, niter, never_infinite);
    case LE_EXPR:
      return FUNC7 (type, iv0, iv1, niter, never_infinite);
    default:
      FUNC6 ();
    }
}