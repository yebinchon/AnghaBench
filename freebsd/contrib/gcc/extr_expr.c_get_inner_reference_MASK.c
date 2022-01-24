#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  double_int ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ARRAY_RANGE_REF 134 
#define  ARRAY_REF 133 
 int /*<<< orphan*/  BIGGEST_ALIGNMENT ; 
 int /*<<< orphan*/  BITS_PER_UNIT ; 
#define  BIT_FIELD_REF 132 
 int FUNC0 (scalar_t__) ; 
 int BLKmode ; 
#define  COMPONENT_REF 131 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (int) ; 
#define  IMAGPART_EXPR 130 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  REALPART_EXPR 129 
 int /*<<< orphan*/  STRICT_ALIGNMENT ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
#define  VIEW_CONVERT_EXPR 128 
 int VOIDmode ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ bitsize_zero_node ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC26 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ size_zero_node ; 
 int /*<<< orphan*/  sizetype ; 
 int FUNC29 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 

tree
FUNC32 (tree exp, HOST_WIDE_INT *pbitsize,
		     HOST_WIDE_INT *pbitpos, tree *poffset,
		     enum machine_mode *pmode, int *punsignedp,
		     int *pvolatilep, bool keep_aligning)
{
  tree size_tree = 0;
  enum machine_mode mode = VOIDmode;
  tree offset = size_zero_node;
  tree bit_offset = bitsize_zero_node;

  /* First get the mode, signedness, and size.  We do this from just the
     outermost expression.  */
  if (FUNC7 (exp) == COMPONENT_REF)
    {
      size_tree = FUNC4 (FUNC8 (exp, 1));
      if (! FUNC1 (FUNC8 (exp, 1)))
	mode = FUNC3 (FUNC8 (exp, 1));

      *punsignedp = FUNC5 (FUNC8 (exp, 1));
    }
  else if (FUNC7 (exp) == BIT_FIELD_REF)
    {
      size_tree = FUNC8 (exp, 1);
      *punsignedp = FUNC0 (exp);
    }
  else
    {
      mode = FUNC13 (FUNC10 (exp));
      *punsignedp = FUNC15 (FUNC10 (exp));

      if (mode == BLKmode)
	size_tree = FUNC14 (FUNC10 (exp));
      else
	*pbitsize = FUNC6 (mode);
    }

  if (size_tree != 0)
    {
      if (! FUNC26 (size_tree, 1))
	mode = BLKmode, *pbitsize = -1;
      else
	*pbitsize = FUNC29 (size_tree, 1);
    }

  *pmode = mode;

  /* Compute cumulative bit-offset for nested component-refs and array-refs,
     and find the ultimate containing object.  */
  while (1)
    {
      switch (FUNC7 (exp))
	{
	case BIT_FIELD_REF:
	  bit_offset = FUNC28 (PLUS_EXPR, bit_offset,
				   FUNC8 (exp, 2));
	  break;

	case COMPONENT_REF:
	  {
	    tree field = FUNC8 (exp, 1);
	    tree this_offset = FUNC19 (exp);

	    /* If this field hasn't been filled in yet, don't go past it.
	       This should only happen when folding expressions made during
	       type construction.  */
	    if (this_offset == 0)
	      break;

	    offset = FUNC28 (PLUS_EXPR, offset, this_offset);
	    bit_offset = FUNC28 (PLUS_EXPR, bit_offset,
				     FUNC2 (field));

	    /* ??? Right now we don't do anything with DECL_OFFSET_ALIGN.  */
	  }
	  break;

	case ARRAY_REF:
	case ARRAY_RANGE_REF:
	  {
	    tree index = FUNC8 (exp, 1);
	    tree low_bound = FUNC17 (exp);
	    tree unit_size = FUNC16 (exp);

	    /* We assume all arrays have sizes that are a multiple of a byte.
	       First subtract the lower bound, if any, in the type of the
	       index, then convert to sizetype and multiply by the size of
	       the array element.  */
	    if (! FUNC27 (low_bound))
	      index = FUNC24 (MINUS_EXPR, FUNC10 (index),
				   index, low_bound);

	    offset = FUNC28 (PLUS_EXPR, offset,
			         FUNC28 (MULT_EXPR,
					     FUNC25 (sizetype, index),
					     unit_size));
	  }
	  break;

	case REALPART_EXPR:
	  break;

	case IMAGPART_EXPR:
	  bit_offset = FUNC28 (PLUS_EXPR, bit_offset,
				   FUNC18 (*pbitsize));
	  break;

	case VIEW_CONVERT_EXPR:
	  if (keep_aligning && STRICT_ALIGNMENT
	      && (FUNC11 (FUNC10 (exp))
	       > FUNC11 (FUNC10 (FUNC8 (exp, 0))))
	      && (FUNC11 (FUNC10 (FUNC8 (exp, 0)))
		  < BIGGEST_ALIGNMENT)
	      && (FUNC12 (FUNC10 (exp))
		  || FUNC12 (FUNC10 (FUNC8 (exp, 0)))))
	    goto done;
	  break;

	default:
	  goto done;
	}

      /* If any reference in the chain is volatile, the effect is volatile.  */
      if (FUNC9 (exp))
	*pvolatilep = 1;

      exp = FUNC8 (exp, 0);
    }
 done:

  /* If OFFSET is constant, see if we can return the whole thing as a
     constant bit position.  Make sure to handle overflow during
     this conversion.  */
  if (FUNC26 (offset, 0))
    {
      double_int tem = FUNC22 (FUNC30 (offset),
				       FUNC31 (BITS_PER_UNIT));
      tem = FUNC20 (tem, FUNC30 (bit_offset));
      if (FUNC21 (tem))
	{
	  *pbitpos = FUNC23 (tem);
	  *poffset = NULL_TREE;
	  return exp;
	}
    }

  /* Otherwise, split it up.  */
  *pbitpos = FUNC29 (bit_offset, 0);
  *poffset = offset;

  return exp;
}