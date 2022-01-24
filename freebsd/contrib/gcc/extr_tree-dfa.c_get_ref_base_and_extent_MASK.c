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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ARRAY_RANGE_REF 134 
#define  ARRAY_REF 133 
#define  BIT_FIELD_REF 132 
 int BLKmode ; 
#define  COMPONENT_REF 131 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
#define  IMAGPART_EXPR 130 
 int INTEGER_CST ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  REALPART_EXPR 129 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
#define  VIEW_CONVERT_EXPR 128 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ bitsize_unit_node ; 
 scalar_t__ bitsize_zero_node ; 
 int /*<<< orphan*/  bitsizetype ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  sizetype ; 

tree
FUNC20 (tree exp, HOST_WIDE_INT *poffset,
			 HOST_WIDE_INT *psize,
			 HOST_WIDE_INT *pmax_size)
{
  HOST_WIDE_INT bitsize = -1;
  HOST_WIDE_INT maxsize = -1;
  tree size_tree = NULL_TREE;
  tree bit_offset = bitsize_zero_node;
  bool seen_variable_array_ref = false;

  FUNC16 (!FUNC3 (exp));

  /* First get the final access size from just the outermost expression.  */
  if (FUNC4 (exp) == COMPONENT_REF)
    size_tree = FUNC1 (FUNC6 (exp, 1));
  else if (FUNC4 (exp) == BIT_FIELD_REF)
    size_tree = FUNC6 (exp, 1);
  else
    {
      enum machine_mode mode = FUNC8 (FUNC7 (exp));
      if (mode == BLKmode)
	size_tree = FUNC9 (FUNC7 (exp));
      else
	bitsize = FUNC2 (mode);
    }
  if (size_tree != NULL_TREE)
    {
      if (! FUNC17 (size_tree, 1))
	bitsize = -1;
      else
	bitsize = FUNC5 (size_tree);
    }

  /* Initially, maxsize is the same as the accessed element size.
     In the following it will only grow (or become -1).  */
  maxsize = bitsize;

  /* Compute cumulative bit-offset for nested component-refs and array-refs,
     and find the ultimate containing object.  */
  while (1)
    {
      switch (FUNC4 (exp))
	{
	case BIT_FIELD_REF:
	  bit_offset = FUNC19 (PLUS_EXPR, bit_offset,
				   FUNC6 (exp, 2));
	  break;

	case COMPONENT_REF:
	  {
	    tree field = FUNC6 (exp, 1);
	    tree this_offset = FUNC13 (exp);

	    if (this_offset && FUNC4 (this_offset) == INTEGER_CST)
	      {
		this_offset = FUNC19 (MULT_EXPR,
					  FUNC15 (bitsizetype,
							this_offset),
					  bitsize_unit_node);
		bit_offset = FUNC19 (PLUS_EXPR,
				         bit_offset, this_offset);
		bit_offset = FUNC19 (PLUS_EXPR, bit_offset,
					 FUNC0 (field));
	      }
	    else
	      {
		tree csize = FUNC9 (FUNC7 (FUNC6 (exp, 0)));
		/* We need to adjust maxsize to the whole structure bitsize.
		   But we can subtract any constant offset seen sofar,
		   because that would get us out of the structure otherwise.  */
		if (maxsize != -1
		    && csize && FUNC17 (csize, 1))
		  {
		    maxsize = (FUNC5 (csize)
			       - FUNC5 (bit_offset));
		  }
		else
		  maxsize = -1;
	      }
	  }
	  break;

	case ARRAY_REF:
	case ARRAY_RANGE_REF:
	  {
	    tree index = FUNC6 (exp, 1);
	    tree low_bound = FUNC11 (exp);
	    tree unit_size = FUNC10 (exp);

	    if (! FUNC18 (low_bound))
	      index = FUNC14 (MINUS_EXPR, FUNC7 (index),
				   index, low_bound);
	    index = FUNC19 (MULT_EXPR,
				FUNC15 (sizetype, index), unit_size);
	    if (FUNC4 (index) == INTEGER_CST)
	      {
		index = FUNC19 (MULT_EXPR,
				    FUNC15 (bitsizetype, index),
				    bitsize_unit_node);
		bit_offset = FUNC19 (PLUS_EXPR, bit_offset, index);

		/* An array ref with a constant index up in the structure
		   hierarchy will constrain the size of any variable array ref
		   lower in the access hierarchy.  */
		seen_variable_array_ref = false;
	      }
	    else
	      {
		tree asize = FUNC9 (FUNC7 (FUNC6 (exp, 0)));
		/* We need to adjust maxsize to the whole array bitsize.
		   But we can subtract any constant offset seen sofar,
		   because that would get us outside of the array otherwise.  */
		if (maxsize != -1
		    && asize && FUNC17 (asize, 1))
		  {
		    maxsize = (FUNC5 (asize)
			       - FUNC5 (bit_offset));
		  }
		else
		  maxsize = -1;

		/* Remember that we have seen an array ref with a variable
		   index.  */
		seen_variable_array_ref = true;
	      }
	  }
	  break;

	case REALPART_EXPR:
	  break;

	case IMAGPART_EXPR:
	  bit_offset = FUNC19 (PLUS_EXPR, bit_offset,
				   FUNC12 (bitsize));
	  break;

	case VIEW_CONVERT_EXPR:
	  /* ???  We probably should give up here and bail out.  */
	  break;

	default:
	  goto done;
	}

      exp = FUNC6 (exp, 0);
    }
 done:

  /* We need to deal with variable arrays ending structures such as
       struct { int length; int a[1]; } x;           x.a[d]
       struct { struct { int a; int b; } a[1]; } x;  x.a[d].a
       struct { struct { int a[1]; } a[1]; } x;      x.a[0][d], x.a[d][0]
     where we do not know maxsize for variable index accesses to
     the array.  The simplest way to conservatively deal with this
     is to punt in the case that offset + maxsize reaches the
     base type boundary.  */
  if (seen_variable_array_ref
      && maxsize != -1
      && FUNC17 (FUNC9 (FUNC7 (exp)), 1)
      && FUNC5 (bit_offset) + maxsize
	 == FUNC5 (FUNC9 (FUNC7 (exp))))
    maxsize = -1;

  /* ???  Due to negative offsets in ARRAY_REF we can end up with
     negative bit_offset here.  We might want to store a zero offset
     in this case.  */
  *poffset = FUNC5 (bit_offset);
  *psize = bitsize;
  *pmax_size = maxsize;

  return exp;
}