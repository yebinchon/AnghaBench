#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ member_0; scalar_t__ member_1; scalar_t__ member_2; scalar_t__ type; scalar_t__ min; scalar_t__ max; int /*<<< orphan*/ * member_3; } ;
typedef  TYPE_1__ value_range_t ;
typedef  scalar_t__ tree ;
typedef  enum value_range_type { ____Placeholder_value_range_type } value_range_type ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int BIT_AND_EXPR ; 
 int CEIL_DIV_EXPR ; 
 int EXACT_DIV_EXPR ; 
 int FLOOR_DIV_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int MAX_EXPR ; 
 int MINUS_EXPR ; 
 int MIN_EXPR ; 
 int MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int PLUS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ROUND_DIV_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int TRUNC_DIV_EXPR ; 
 int TRUTH_ANDIF_EXPR ; 
 int TRUTH_AND_EXPR ; 
 int TRUTH_ORIF_EXPR ; 
 int TRUTH_OR_EXPR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VR_ANTI_RANGE ; 
 scalar_t__ VR_RANGE ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 scalar_t__ FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (scalar_t__) ; 

__attribute__((used)) static void
FUNC30 (value_range_t *vr, tree expr)
{
  enum tree_code code = FUNC1 (expr);
  enum value_range_type type;
  tree op0, op1, min, max;
  int cmp;
  value_range_t vr0 = { VR_UNDEFINED, NULL_TREE, NULL_TREE, NULL };
  value_range_t vr1 = { VR_UNDEFINED, NULL_TREE, NULL_TREE, NULL };

  /* Not all binary expressions can be applied to ranges in a
     meaningful way.  Handle only arithmetic operations.  */
  if (code != PLUS_EXPR
      && code != MINUS_EXPR
      && code != MULT_EXPR
      && code != TRUNC_DIV_EXPR
      && code != FLOOR_DIV_EXPR
      && code != CEIL_DIV_EXPR
      && code != EXACT_DIV_EXPR
      && code != ROUND_DIV_EXPR
      && code != MIN_EXPR
      && code != MAX_EXPR
      && code != BIT_AND_EXPR
      && code != TRUTH_ANDIF_EXPR
      && code != TRUTH_ORIF_EXPR
      && code != TRUTH_AND_EXPR
      && code != TRUTH_OR_EXPR)
    {
      FUNC24 (vr);
      return;
    }

  /* Get value ranges for each operand.  For constant operands, create
     a new value range with the operand to simplify processing.  */
  op0 = FUNC2 (expr, 0);
  if (FUNC1 (op0) == SSA_NAME)
    vr0 = *(FUNC10 (op0));
  else if (FUNC13 (op0))
    FUNC23 (&vr0, op0, NULL);
  else
    FUNC24 (&vr0);

  op1 = FUNC2 (expr, 1);
  if (FUNC1 (op1) == SSA_NAME)
    vr1 = *(FUNC10 (op1));
  else if (FUNC13 (op1))
    FUNC23 (&vr1, op1, NULL);
  else
    FUNC24 (&vr1);

  /* If either range is UNDEFINED, so is the result.  */
  if (vr0.type == VR_UNDEFINED || vr1.type == VR_UNDEFINED)
    {
      FUNC22 (vr);
      return;
    }

  /* The type of the resulting value range defaults to VR0.TYPE.  */
  type = vr0.type;

  /* Refuse to operate on VARYING ranges, ranges of different kinds
     and symbolic ranges.  As an exception, we allow BIT_AND_EXPR
     because we may be able to derive a useful range even if one of
     the operands is VR_VARYING or symbolic range.  TODO, we may be
     able to derive anti-ranges in some cases.  */
  if (code != BIT_AND_EXPR
      && code != TRUTH_AND_EXPR
      && code != TRUTH_OR_EXPR
      && (vr0.type == VR_VARYING
	  || vr1.type == VR_VARYING
	  || vr0.type != vr1.type
	  || FUNC25 (&vr0)
	  || FUNC25 (&vr1)))
    {
      FUNC24 (vr);
      return;
    }

  /* Now evaluate the expression to determine the new range.  */
  if (FUNC0 (FUNC4 (expr))
      || FUNC0 (FUNC4 (op0))
      || FUNC0 (FUNC4 (op1)))
    {
      /* For pointer types, we are really only interested in asserting
	 whether the expression evaluates to non-NULL.  FIXME, we used
	 to gcc_assert (code == PLUS_EXPR || code == MINUS_EXPR), but
	 ivopts is generating expressions with pointer multiplication
	 in them.  */
      if (code == PLUS_EXPR)
	{
	  if (FUNC17 (&vr0) || FUNC17 (&vr1))
	    FUNC20 (vr, FUNC4 (expr));
	  else if (FUNC18 (&vr0) && FUNC18 (&vr1))
	    FUNC21 (vr, FUNC4 (expr));
	  else
	    FUNC24 (vr);
	}
      else
	{
	  /* Subtracting from a pointer, may yield 0, so just drop the
	     resulting range to varying.  */
	  FUNC24 (vr);
	}

      return;
    }

  /* For integer ranges, apply the operation to each end of the
     range and see what we end up with.  */
  if (code == TRUTH_ANDIF_EXPR
      || code == TRUTH_ORIF_EXPR
      || code == TRUTH_AND_EXPR
      || code == TRUTH_OR_EXPR)
    {
      /* If one of the operands is zero, we know that the whole
	 expression evaluates zero.  */
      if (code == TRUTH_AND_EXPR
	  && ((vr0.type == VR_RANGE
	       && FUNC12 (vr0.min)
	       && FUNC12 (vr0.max))
	      || (vr1.type == VR_RANGE
		  && FUNC12 (vr1.min)
		  && FUNC12 (vr1.max))))
	{
	  type = VR_RANGE;
	  min = max = FUNC6 (FUNC4 (expr), 0);
	}
      /* If one of the operands is one, we know that the whole
	 expression evaluates one.  */
      else if (code == TRUTH_OR_EXPR
	       && ((vr0.type == VR_RANGE
		    && FUNC11 (vr0.min)
		    && FUNC11 (vr0.max))
		   || (vr1.type == VR_RANGE
		       && FUNC11 (vr1.min)
		       && FUNC11 (vr1.max))))
	{
	  type = VR_RANGE;
	  min = max = FUNC6 (FUNC4 (expr), 1);
	}
      else if (vr0.type != VR_VARYING
	       && vr1.type != VR_VARYING
	       && vr0.type == vr1.type
	       && !FUNC25 (&vr0)
	       && !FUNC15 (&vr0)
	       && !FUNC25 (&vr1)
	       && !FUNC15 (&vr1))
	{
	  /* Boolean expressions cannot be folded with int_const_binop.  */
	  min = FUNC8 (code, FUNC4 (expr), vr0.min, vr1.min);
	  max = FUNC8 (code, FUNC4 (expr), vr0.max, vr1.max);
	}
      else
	{
	  FUNC24 (vr);
	  return;
	}
    }
  else if (code == PLUS_EXPR
	   || code == MIN_EXPR
	   || code == MAX_EXPR)
    {
      /* If we have a PLUS_EXPR with two VR_ANTI_RANGEs, drop to
	 VR_VARYING.  It would take more effort to compute a precise
	 range for such a case.  For example, if we have op0 == 1 and
	 op1 == -1 with their ranges both being ~[0,0], we would have
	 op0 + op1 == 0, so we cannot claim that the sum is in ~[0,0].
	 Note that we are guaranteed to have vr0.type == vr1.type at
	 this point.  */
      if (code == PLUS_EXPR && vr0.type == VR_ANTI_RANGE)
	{
	  FUNC24 (vr);
	  return;
	}

      /* For operations that make the resulting range directly
	 proportional to the original ranges, apply the operation to
	 the same end of each range.  */
      min = FUNC27 (code, vr0.min, vr1.min);
      max = FUNC27 (code, vr0.max, vr1.max);
    }
  else if (code == MULT_EXPR
	   || code == TRUNC_DIV_EXPR
	   || code == FLOOR_DIV_EXPR
	   || code == CEIL_DIV_EXPR
	   || code == EXACT_DIV_EXPR
	   || code == ROUND_DIV_EXPR)
    {
      tree val[4];
      size_t i;
      bool sop;

      /* If we have an unsigned MULT_EXPR with two VR_ANTI_RANGEs,
	 drop to VR_VARYING.  It would take more effort to compute a
	 precise range for such a case.  For example, if we have
	 op0 == 65536 and op1 == 65536 with their ranges both being
	 ~[0,0] on a 32-bit machine, we would have op0 * op1 == 0, so
	 we cannot claim that the product is in ~[0,0].  Note that we
	 are guaranteed to have vr0.type == vr1.type at this
	 point.  */
      if (code == MULT_EXPR
	  && vr0.type == VR_ANTI_RANGE
	  && !FUNC5 (FUNC4 (op0)))
	{
	  FUNC24 (vr);
	  return;
	}

      /* Multiplications and divisions are a bit tricky to handle,
	 depending on the mix of signs we have in the two ranges, we
	 need to operate on different values to get the minimum and
	 maximum values for the new range.  One approach is to figure
	 out all the variations of range combinations and do the
	 operations.

	 However, this involves several calls to compare_values and it
	 is pretty convoluted.  It's simpler to do the 4 operations
	 (MIN0 OP MIN1, MIN0 OP MAX1, MAX0 OP MIN1 and MAX0 OP MAX0 OP
	 MAX1) and then figure the smallest and largest values to form
	 the new range.  */

      /* Divisions by zero result in a VARYING value.  */
      if (code != MULT_EXPR
	  && (vr0.type == VR_ANTI_RANGE || FUNC16 (&vr1)))
	{
	  FUNC24 (vr);
	  return;
	}

      /* Compute the 4 cross operations.  */
      sop = false;
      val[0] = FUNC27 (code, vr0.min, vr1.min);
      if (val[0] == NULL_TREE)
	sop = true;

      if (vr1.max == vr1.min)
	val[1] = NULL_TREE;
      else
	{
	  val[1] = FUNC27 (code, vr0.min, vr1.max);
	  if (val[1] == NULL_TREE)
	    sop = true;
	}

      if (vr0.max == vr0.min)
	val[2] = NULL_TREE;
      else
	{
	  val[2] = FUNC27 (code, vr0.max, vr1.min);
	  if (val[2] == NULL_TREE)
	    sop = true;
	}

      if (vr0.min == vr0.max || vr1.min == vr1.max)
	val[3] = NULL_TREE;
      else
	{
	  val[3] = FUNC27 (code, vr0.max, vr1.max);
	  if (val[3] == NULL_TREE)
	    sop = true;
	}

      if (sop)
	{
	  FUNC24 (vr);
	  return;
	}

      /* Set MIN to the minimum of VAL[i] and MAX to the maximum
	 of VAL[i].  */
      min = val[0];
      max = val[0];
      for (i = 1; i < 4; i++)
	{
	  if (!FUNC13 (min)
	      || (FUNC3 (min) && !FUNC14 (min))
	      || !FUNC13 (max)
	      || (FUNC3 (max) && !FUNC14 (max)))
	    break;

	  if (val[i])
	    {
	      if (!FUNC13 (val[i])
		  || (FUNC3 (val[i])
		      && !FUNC14 (val[i])))
		{
		  /* If we found an overflowed value, set MIN and MAX
		     to it so that we set the resulting range to
		     VARYING.  */
		  min = max = val[i];
		  break;
		}

	      if (FUNC7 (val[i], min) == -1)
		min = val[i];

	      if (FUNC7 (val[i], max) == 1)
		max = val[i];
	    }
	}
    }
  else if (code == MINUS_EXPR)
    {
      /* If we have a MINUS_EXPR with two VR_ANTI_RANGEs, drop to
	 VR_VARYING.  It would take more effort to compute a precise
	 range for such a case.  For example, if we have op0 == 1 and
	 op1 == 1 with their ranges both being ~[0,0], we would have
	 op0 - op1 == 0, so we cannot claim that the difference is in
	 ~[0,0].  Note that we are guaranteed to have
	 vr0.type == vr1.type at this point.  */
      if (vr0.type == VR_ANTI_RANGE)
	{
	  FUNC24 (vr);
	  return;
	}

      /* For MINUS_EXPR, apply the operation to the opposite ends of
	 each range.  */
      min = FUNC27 (code, vr0.min, vr1.max);
      max = FUNC27 (code, vr0.max, vr1.min);
    }
  else if (code == BIT_AND_EXPR)
    {
      if (vr0.type == VR_RANGE
	  && vr0.min == vr0.max
	  && FUNC1 (vr0.max) == INTEGER_CST
	  && !FUNC3 (vr0.max)
	  && FUNC26 (vr0.max) >= 0)
	{
	  min = FUNC6 (FUNC4 (expr), 0);
	  max = vr0.max;
	}
      else if (vr1.type == VR_RANGE
	       && vr1.min == vr1.max
	       && FUNC1 (vr1.max) == INTEGER_CST
	       && !FUNC3 (vr1.max)
	       && FUNC26 (vr1.max) >= 0)
	{
	  type = VR_RANGE;
	  min = FUNC6 (FUNC4 (expr), 0);
	  max = vr1.max;
	}
      else
	{
	  FUNC24 (vr);
	  return;
	}
    }
  else
    FUNC9 ();

  /* If either MIN or MAX overflowed, then set the resulting range to
     VARYING.  But we do accept an overflow infinity
     representation.  */
  if (min == NULL_TREE
      || !FUNC13 (min)
      || (FUNC3 (min) && !FUNC14 (min))
      || max == NULL_TREE
      || !FUNC13 (max)
      || (FUNC3 (max) && !FUNC14 (max)))
    {
      FUNC24 (vr);
      return;
    }

  /* We punt if:
     1) [-INF, +INF]
     2) [-INF, +-INF(OVF)]
     3) [+-INF(OVF), +INF]
     4) [+-INF(OVF), +-INF(OVF)]
     We learn nothing when we have INF and INF(OVF) on both sides.
     Note that we do accept [-INF, -INF] and [+INF, +INF] without
     overflow.  */
  if ((FUNC29 (min) || FUNC14 (min))
      && (FUNC28 (max) || FUNC14 (max)))
    {
      FUNC24 (vr);
      return;
    }

  cmp = FUNC7 (min, max);
  if (cmp == -2 || cmp == 1)
    {
      /* If the new range has its limits swapped around (MIN > MAX),
	 then the operation caused one of them to wrap around, mark
	 the new range VARYING.  */
      FUNC24 (vr);
    }
  else
    FUNC19 (vr, type, min, max, NULL);
}