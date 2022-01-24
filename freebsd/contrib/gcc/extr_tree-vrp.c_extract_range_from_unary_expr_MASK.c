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
struct TYPE_15__ {scalar_t__ member_0; scalar_t__ type; scalar_t__ min; scalar_t__ max; int /*<<< orphan*/ * equiv; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ value_range_t ;
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int ABS_EXPR ; 
 int BIT_NOT_EXPR ; 
 int CONJ_EXPR ; 
 int CONVERT_EXPR ; 
 int FIX_CEIL_EXPR ; 
 int FIX_FLOOR_EXPR ; 
 int FIX_ROUND_EXPR ; 
 int FIX_TRUNC_EXPR ; 
 int FLOAT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int NEGATE_EXPR ; 
 int NON_LVALUE_EXPR ; 
 int NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ VR_ANTI_RANGE ; 
 scalar_t__ VR_RANGE ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 TYPE_1__* FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (TYPE_1__*) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (TYPE_1__*) ; 
 scalar_t__ FUNC30 (TYPE_1__*) ; 
 scalar_t__ FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*) ; 
 scalar_t__ FUNC38 (scalar_t__) ; 
 scalar_t__ FUNC39 (TYPE_1__*) ; 
 scalar_t__ FUNC40 (scalar_t__,int*) ; 
 scalar_t__ FUNC41 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC42 (scalar_t__) ; 
 scalar_t__ FUNC43 (scalar_t__) ; 

__attribute__((used)) static void
FUNC44 (value_range_t *vr, tree expr)
{
  enum tree_code code = FUNC2 (expr);
  tree min, max, op0;
  int cmp;
  value_range_t vr0 = { VR_UNDEFINED, NULL_TREE, NULL_TREE, NULL };

  /* Refuse to operate on certain unary expressions for which we
     cannot easily determine a resulting range.  */
  if (code == FIX_TRUNC_EXPR
      || code == FIX_CEIL_EXPR
      || code == FIX_FLOOR_EXPR
      || code == FIX_ROUND_EXPR
      || code == FLOAT_EXPR
      || code == BIT_NOT_EXPR
      || code == NON_LVALUE_EXPR
      || code == CONJ_EXPR)
    {
      FUNC37 (vr);
      return;
    }

  /* Get value ranges for the operand.  For constant operands, create
     a new value range with the operand to simplify processing.  */
  op0 = FUNC3 (expr, 0);
  if (FUNC2 (op0) == SSA_NAME)
    vr0 = *(FUNC18 (op0));
  else if (FUNC20 (op0))
    FUNC36 (&vr0, op0, NULL);
  else
    FUNC37 (&vr0);

  /* If VR0 is UNDEFINED, so is the result.  */
  if (vr0.type == VR_UNDEFINED)
    {
      FUNC35 (vr);
      return;
    }

  /* Refuse to operate on symbolic ranges, or if neither operand is
     a pointer or integral type.  */
  if ((!FUNC0 (FUNC5 (op0))
       && !FUNC1 (FUNC5 (op0)))
      || (vr0.type != VR_VARYING
	  && FUNC39 (&vr0)))
    {
      FUNC37 (vr);
      return;
    }

  /* If the expression involves pointers, we are only interested in
     determining if it evaluates to NULL [0, 0] or non-NULL (~[0, 0]).  */
  if (FUNC1 (FUNC5 (expr)) || FUNC1 (FUNC5 (op0)))
    {
      bool sop;

      sop = false;
      if (FUNC30 (&vr0)
	  || (FUNC40 (expr, &sop)
	      && !sop))
	FUNC33 (vr, FUNC5 (expr));
      else if (FUNC31 (&vr0))
	FUNC34 (vr, FUNC5 (expr));
      else
	FUNC37 (vr);

      return;
    }

  /* Handle unary expressions on integer ranges.  */
  if (code == NOP_EXPR || code == CONVERT_EXPR)
    {
      tree inner_type = FUNC5 (op0);
      tree outer_type = FUNC5 (expr);

      /* If VR0 represents a simple range, then try to convert
	 the min and max values for the range to the same type
	 as OUTER_TYPE.  If the results compare equal to VR0's
	 min and max values and the new min is still less than
	 or equal to the new max, then we can safely use the newly
	 computed range for EXPR.  This allows us to compute
	 accurate ranges through many casts.  */
      if ((vr0.type == VR_RANGE
	   && !FUNC27 (&vr0))
	  || (vr0.type == VR_VARYING
	      && FUNC10 (outer_type) > FUNC10 (inner_type)))
	{
	  tree new_min, new_max, orig_min, orig_max;

	  /* Convert the input operand min/max to OUTER_TYPE.   If
	     the input has no range information, then use the min/max
	     for the input's type.  */
	  if (vr0.type == VR_RANGE)
	    {
	      orig_min = vr0.min;
	      orig_max = vr0.max;
	    }
	  else
	    {
	      orig_min = FUNC7 (inner_type);
	      orig_max = FUNC6 (inner_type);
	    }

	  new_min = FUNC15 (outer_type, orig_min);
	  new_max = FUNC15 (outer_type, orig_max);

	  /* Verify the new min/max values are gimple values and
	     that they compare equal to the original input's
	     min/max values.  */
	  if (FUNC21 (new_min)
	      && FUNC21 (new_max)
	      && FUNC41 (new_min, orig_min)
	      && FUNC41 (new_max, orig_max)
	      && (!FUNC23 (new_min)
		  || !FUNC23 (new_max))
	      && FUNC14 (new_min, new_max) <= 0
	      && FUNC14 (new_min, new_max) >= -1)
	    {
	      FUNC32 (vr, VR_RANGE, new_min, new_max, vr->equiv);
	      return;
	    }
	}

      /* When converting types of different sizes, set the result to
	 VARYING.  Things like sign extensions and precision loss may
	 change the range.  For instance, if x_3 is of type 'long long
	 int' and 'y_5 = (unsigned short) x_3', if x_3 is ~[0, 0], it
	 is impossible to know at compile time whether y_5 will be
	 ~[0, 0].  */
      if (FUNC11 (inner_type) != FUNC11 (outer_type)
	  || FUNC10 (inner_type) != FUNC10 (outer_type))
	{
	  FUNC37 (vr);
	  return;
	}
    }

  /* Conversion of a VR_VARYING value to a wider type can result
     in a usable range.  So wait until after we've handled conversions
     before dropping the result to VR_VARYING if we had a source
     operand that is VR_VARYING.  */
  if (vr0.type == VR_VARYING)
    {
      FUNC37 (vr);
      return;
    }

  /* Apply the operation to each end of the range and see what we end
     up with.  */
  if (code == NEGATE_EXPR
      && !FUNC12 (FUNC5 (expr)))
    {
      /* NEGATE_EXPR flips the range around.  We need to treat
	 TYPE_MIN_VALUE specially.  */
      if (FUNC24 (vr0.max))
	min = FUNC26 (FUNC5 (expr));
      else if (FUNC22 (vr0.max))
	min = FUNC28 (FUNC5 (expr));
      else if (!FUNC43 (vr0.max))
	min = FUNC16 (code, FUNC5 (expr), vr0.max);
      else if (FUNC25 (FUNC5 (expr)))
	{
	  if (FUNC38 (FUNC5 (expr))
	      && !FUNC23 (vr0.min)
	      && !FUNC43 (vr0.min))
	    min = FUNC28 (FUNC5 (expr));
	  else
	    {
	      FUNC37 (vr);
	      return;
	    }
	}
      else
	min = FUNC7 (FUNC5 (expr));

      if (FUNC24 (vr0.min))
	max = FUNC26 (FUNC5 (expr));
      else if (FUNC22 (vr0.min))
	max = FUNC28 (FUNC5 (expr));
      else if (!FUNC43 (vr0.min))
	max = FUNC16 (code, FUNC5 (expr), vr0.min);
      else if (FUNC25 (FUNC5 (expr)))
	{
	  if (FUNC38 (FUNC5 (expr)))
	    max = FUNC28 (FUNC5 (expr));
	  else
	    {
	      FUNC37 (vr);
	      return;
	    }
	}
      else
	max = FUNC7 (FUNC5 (expr));
    }
  else if (code == NEGATE_EXPR
	   && FUNC12 (FUNC5 (expr)))
    {
      if (!FUNC29 (&vr0))
	{
	  max = FUNC16 (code, FUNC5 (expr), vr0.min);
	  min = FUNC16 (code, FUNC5 (expr), vr0.max);
	}
      else
	{
	  if (FUNC31 (&vr0))
	    FUNC34 (vr, FUNC5 (expr));
	  else
	    FUNC37 (vr);
	  return;
	}
    }
  else if (code == ABS_EXPR
           && !FUNC12 (FUNC5 (expr)))
    {
      /* -TYPE_MIN_VALUE = TYPE_MIN_VALUE with flag_wrapv so we can't get a
         useful range.  */
      if (!FUNC8 (FUNC5 (expr))
	  && ((vr0.type == VR_RANGE
	       && FUNC43 (vr0.min))
	      || (vr0.type == VR_ANTI_RANGE
		  && !FUNC43 (vr0.min)
		  && !FUNC29 (&vr0))))
	{
	  FUNC37 (vr);
	  return;
	}
	
      /* ABS_EXPR may flip the range around, if the original range
	 included negative values.  */
      if (FUNC23 (vr0.min))
	min = FUNC28 (FUNC5 (expr));
      else if (!FUNC43 (vr0.min))
	min = FUNC16 (code, FUNC5 (expr), vr0.min);
      else if (!FUNC25 (FUNC5 (expr)))
	min = FUNC6 (FUNC5 (expr));
      else if (FUNC38 (FUNC5 (expr)))
	min = FUNC28 (FUNC5 (expr));
      else
	{
	  FUNC37 (vr);
	  return;
	}

      if (FUNC23 (vr0.max))
	max = FUNC28 (FUNC5 (expr));
      else if (!FUNC43 (vr0.max))
	max = FUNC16 (code, FUNC5 (expr), vr0.max);
      else if (!FUNC25 (FUNC5 (expr)))
	max = FUNC6 (FUNC5 (expr));
      else if (FUNC38 (FUNC5 (expr)))
	max = FUNC28 (FUNC5 (expr));
      else
	{
	  FUNC37 (vr);
	  return;
	}

      cmp = FUNC14 (min, max);

      /* If a VR_ANTI_RANGEs contains zero, then we have
	 ~[-INF, min(MIN, MAX)].  */
      if (vr0.type == VR_ANTI_RANGE)
	{ 
	  if (FUNC29 (&vr0))
	    {
	      /* Take the lower of the two values.  */
	      if (cmp != 1)
		max = min;

	      /* Create ~[-INF, min (abs(MIN), abs(MAX))]
	         or ~[-INF + 1, min (abs(MIN), abs(MAX))] when
		 flag_wrapv is set and the original anti-range doesn't include
	         TYPE_MIN_VALUE, remember -TYPE_MIN_VALUE = TYPE_MIN_VALUE.  */
	      if (FUNC9 (FUNC5 (expr)))
		{
		  tree type_min_value = FUNC7 (FUNC5 (expr));

		  min = (vr0.min != type_min_value
			 ? FUNC19 (PLUS_EXPR, type_min_value,
					    integer_one_node, 0)
			 : type_min_value);
		}
	      else
		{
		  if (FUNC27 (&vr0))
		    min = FUNC26 (FUNC5 (expr));
		  else
		    min = FUNC7 (FUNC5 (expr));
		}
	    }
	  else
	    {
	      /* All else has failed, so create the range [0, INF], even for
	         flag_wrapv since TYPE_MIN_VALUE is in the original
	         anti-range.  */
	      vr0.type = VR_RANGE;
	      min = FUNC13 (FUNC5 (expr), 0);
	      if (FUNC25 (FUNC5 (expr)))
		{
		  if (FUNC38 (FUNC5 (expr)))
		    max = FUNC28 (FUNC5 (expr));
		  else
		    {
		      FUNC37 (vr);
		      return;
		    }
		}
	      else
		max = FUNC6 (FUNC5 (expr));
	    }
	}

      /* If the range contains zero then we know that the minimum value in the
         range will be zero.  */
      else if (FUNC29 (&vr0))
	{
	  if (cmp == 1)
	    max = min;
	  min = FUNC13 (FUNC5 (expr), 0);
	}
      else
	{
          /* If the range was reversed, swap MIN and MAX.  */
	  if (cmp == 1)
	    {
	      tree t = min;
	      min = max;
	      max = t;
	    }
	}
    }
  else
    {
      /* Otherwise, operate on each end of the range.  */
      min = FUNC16 (code, FUNC5 (expr), vr0.min);
      max = FUNC16 (code, FUNC5 (expr), vr0.max);

      if (FUNC25 (FUNC5 (expr)))
	{
	  FUNC17 (code != NEGATE_EXPR && code != ABS_EXPR);

	  /* If both sides have overflowed, we don't know
	     anything.  */
	  if ((FUNC23 (vr0.min)
	       || FUNC4 (min))
	      && (FUNC23 (vr0.max)
		  || FUNC4 (max)))
	    {
	      FUNC37 (vr);
	      return;
	    }

	  if (FUNC23 (vr0.min))
	    min = vr0.min;
	  else if (FUNC4 (min))
	    {
	      if (FUNC38 (FUNC5 (expr)))
		min = (FUNC42 (min) >= 0
		       ? FUNC28 (FUNC5 (min))
		       : FUNC26 (FUNC5 (min)));
	      else
		{
		  FUNC37 (vr);
		  return;
		}
	    }

	  if (FUNC23 (vr0.max))
	    max = vr0.max;
	  else if (FUNC4 (max))
	    {
	      if (FUNC38 (FUNC5 (expr)))
		max = (FUNC42 (max) >= 0
		       ? FUNC28 (FUNC5 (max))
		       : FUNC26 (FUNC5 (max)));
	      else
		{
		  FUNC37 (vr);
		  return;
		}
	    }
	}
    }

  cmp = FUNC14 (min, max);
  if (cmp == -2 || cmp == 1)
    {
      /* If the new range has its limits swapped around (MIN > MAX),
	 then the operation caused one of them to wrap around, mark
	 the new range VARYING.  */
      FUNC37 (vr);
    }
  else
    FUNC32 (vr, vr0.type, min, max, NULL);
}