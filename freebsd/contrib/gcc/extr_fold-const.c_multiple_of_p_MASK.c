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

/* Variables and functions */
#define  BIT_AND_EXPR 135 
#define  INTEGER_CST 134 
 int const INTEGER_TYPE ; 
#define  LSHIFT_EXPR 133 
#define  MINUS_EXPR 132 
#define  MULT_EXPR 131 
#define  NOP_EXPR 130 
#define  PLUS_EXPR 129 
#define  SAVE_EXPR 128 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int const TRUNC_MOD_EXPR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_one_node ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14 (tree type, tree top, tree bottom)
{
  if (FUNC12 (top, bottom, 0))
    return 1;

  if (FUNC0 (type) != INTEGER_TYPE)
    return 0;

  switch (FUNC0 (top))
    {
    case BIT_AND_EXPR:
      /* Bitwise and provides a power of two multiple.  If the mask is
	 a multiple of BOTTOM then TOP is a multiple of BOTTOM.  */
      if (!FUNC10 (bottom))
	return 0;
      /* FALLTHRU */

    case MULT_EXPR:
      return (FUNC14 (type, FUNC3 (top, 0), bottom)
	      || FUNC14 (type, FUNC3 (top, 1), bottom));

    case PLUS_EXPR:
    case MINUS_EXPR:
      return (FUNC14 (type, FUNC3 (top, 0), bottom)
	      && FUNC14 (type, FUNC3 (top, 1), bottom));

    case LSHIFT_EXPR:
      if (FUNC0 (FUNC3 (top, 1)) == INTEGER_CST)
	{
	  tree op1, t1;

	  op1 = FUNC3 (top, 1);
	  /* const_binop may not detect overflow correctly,
	     so check for it explicitly here.  */
	  if (FUNC6 (FUNC5 (size_one_node))
	      > FUNC2 (op1)
	      && FUNC1 (op1) == 0
	      && 0 != (t1 = FUNC9 (type,
					  FUNC8 (LSHIFT_EXPR,
						       size_one_node,
						       op1, 0)))
	      && ! FUNC4 (t1))
	    return FUNC14 (type, t1, bottom);
	}
      return 0;

    case NOP_EXPR:
      /* Can't handle conversions from non-integral or wider integral type.  */
      if ((FUNC0 (FUNC5 (FUNC3 (top, 0))) != INTEGER_TYPE)
	  || (FUNC6 (type)
	      < FUNC6 (FUNC5 (FUNC3 (top, 0)))))
	return 0;

      /* .. fall through ...  */

    case SAVE_EXPR:
      return FUNC14 (type, FUNC3 (top, 0), bottom);

    case INTEGER_CST:
      if (FUNC0 (bottom) != INTEGER_CST
	  || (FUNC7 (type)
	      && (FUNC13 (top) < 0
		  || FUNC13 (bottom) < 0)))
	return 0;
      return FUNC11 (FUNC8 (TRUNC_MOD_EXPR,
					 top, bottom, 0));

    default:
      return 0;
    }
}