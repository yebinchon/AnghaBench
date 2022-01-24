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
typedef  int /*<<< orphan*/  tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ADDR_EXPR 132 
 unsigned int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONVERT_EXPR 131 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int const INDIRECT_REF ; 
 int FUNC4 (unsigned int,unsigned int) ; 
 int const MULT_EXPR ; 
#define  NON_LVALUE_EXPR 130 
#define  NOP_EXPR 129 
#define  PLUS_EXPR 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int const FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int const VIEW_CONVERT_EXPR ; 
 scalar_t__ flag_tree_ter ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ optimize ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14 (tree exp, unsigned int max_align)
{
  unsigned int align, inner;

  /* We rely on TER to compute accurate alignment information.  */
  if (!(optimize && flag_tree_ter))
    return 0;

  if (!FUNC5 (FUNC8 (exp)))
    return 0;

  align = FUNC9 (FUNC8 (FUNC8 (exp)));
  align = FUNC4 (align, max_align);

  while (1)
    {
      switch (FUNC6 (exp))
	{
	case NOP_EXPR:
	case CONVERT_EXPR:
	case NON_LVALUE_EXPR:
	  exp = FUNC7 (exp, 0);
	  if (! FUNC5 (FUNC8 (exp)))
	    return align;

	  inner = FUNC9 (FUNC8 (FUNC8 (exp)));
	  align = FUNC4 (inner, max_align);
	  break;

	case PLUS_EXPR:
	  /* If sum of pointer + int, restrict our maximum alignment to that
	     imposed by the integer.  If not, we can't do any better than
	     ALIGN.  */
	  if (! FUNC12 (FUNC7 (exp, 1), 1))
	    return align;

	  while (((FUNC13 (FUNC7 (exp, 1), 1))
		  & (max_align / BITS_PER_UNIT - 1))
		 != 0)
	    max_align >>= 1;

	  exp = FUNC7 (exp, 0);
	  break;

	case ADDR_EXPR:
	  /* See what we are pointing at and look at its alignment.  */
	  exp = FUNC7 (exp, 0);
	  inner = max_align;
	  if (FUNC11 (exp))
	    {
	      HOST_WIDE_INT bitsize, bitpos;
	      tree offset;
	      enum machine_mode mode; 
	      int unsignedp, volatilep;

	      exp = FUNC10 (exp, &bitsize, &bitpos, &offset,
					 &mode, &unsignedp, &volatilep, true);
	      if (bitpos)
		inner = FUNC4 (inner, (unsigned) (bitpos & -bitpos));
	      if (offset && FUNC6 (offset) == PLUS_EXPR
		  && FUNC12 (FUNC7 (offset, 1), 1))
	        {
		  /* Any overflow in calculating offset_bits won't change
		     the alignment.  */
		  unsigned offset_bits
		    = ((unsigned) FUNC13 (FUNC7 (offset, 1), 1)
		       * BITS_PER_UNIT);

		  if (offset_bits)
		    inner = FUNC4 (inner, (offset_bits & -offset_bits));
		  offset = FUNC7 (offset, 0);
		}
	      if (offset && FUNC6 (offset) == MULT_EXPR
		  && FUNC12 (FUNC7 (offset, 1), 1))
	        {
		  /* Any overflow in calculating offset_factor won't change
		     the alignment.  */
		  unsigned offset_factor
		    = ((unsigned) FUNC13 (FUNC7 (offset, 1), 1)
		       * BITS_PER_UNIT);

		  if (offset_factor)
		    inner = FUNC4 (inner, (offset_factor & -offset_factor));
		}
	      else if (offset)
		inner = FUNC4 (inner, BITS_PER_UNIT);
	    }
	  if (FUNC3 (exp))
	    align = FUNC4 (inner, FUNC2 (exp));
#ifdef CONSTANT_ALIGNMENT
	  else if (CONSTANT_CLASS_P (exp))
	    align = MIN (inner, (unsigned)CONSTANT_ALIGNMENT (exp, align));
#endif
	  else if (FUNC6 (exp) == VIEW_CONVERT_EXPR
		   || FUNC6 (exp) == INDIRECT_REF)
	    align = FUNC4 (FUNC9 (FUNC8 (exp)), inner);
	  else
	    align = FUNC4 (align, inner);
	  return FUNC4 (align, max_align);

	default:
	  return align;
	}
    }
}