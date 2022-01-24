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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  CONST_DOUBLE 133 
#define  CONST_INT 132 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  LABEL_REF 131 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int PLUS ; 
#define  REG 130 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  SYMBOL_REF 129 
 scalar_t__ FUNC7 (scalar_t__) ; 
#define  VALUE 128 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 int FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16 (rtx x, rtx y)
{
  int i;
  int j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0 && y == 0)
    return 1;
  if (x == 0 || y == 0)
    return 0;

  if (x == y)
    return 1;

  code = FUNC1 (x);
  /* Rtx's of different codes cannot be equal.  */
  if (code != FUNC1 (y))
    return 0;

  /* (MULT:SI x y) and (MULT:HI x y) are NOT equivalent.
     (REG:SI x) and (REG:HI x) are NOT equivalent.  */

  if (FUNC2 (x) != FUNC2 (y))
    return 0;

  /* Some RTL can be compared without a recursive examination.  */
  switch (code)
    {
    case REG:
      return FUNC6 (x) == FUNC6 (y);

    case LABEL_REF:
      return FUNC8 (x, 0) == FUNC8 (y, 0);

    case SYMBOL_REF:
      return FUNC10 (x, 0) == FUNC10 (y, 0);

    case VALUE:
    case CONST_INT:
    case CONST_DOUBLE:
      /* There's no need to compare the contents of CONST_DOUBLEs or
	 CONST_INTs because pointer equality is a good enough
	 comparison for these nodes.  */
      return 0;

    default:
      break;
    }

  /* canon_rtx knows how to handle plus.  No need to canonicalize.  */
  if (code == PLUS)
    return ((FUNC16 (FUNC8 (x, 0), FUNC8 (y, 0))
	     && FUNC16 (FUNC8 (x, 1), FUNC8 (y, 1)))
	    || (FUNC16 (FUNC8 (x, 0), FUNC8 (y, 1))
		&& FUNC16 (FUNC8 (x, 1), FUNC8 (y, 0))));
  /* For commutative operations, the RTX match if the operand match in any
     order.  Also handle the simple binary and unary cases without a loop.  */
  if (FUNC0 (x))
    {
      rtx xop0 = FUNC13 (FUNC8 (x, 0));
      rtx yop0 = FUNC13 (FUNC8 (y, 0));
      rtx yop1 = FUNC13 (FUNC8 (y, 1));

      return ((FUNC16 (xop0, yop0)
	       && FUNC16 (FUNC13 (FUNC8 (x, 1)), yop1))
	      || (FUNC16 (xop0, yop1)
		  && FUNC16 (FUNC13 (FUNC8 (x, 1)), yop0)));
    }
  else if (FUNC5 (x))
    {
      return (FUNC16 (FUNC13 (FUNC8 (x, 0)),
				      FUNC13 (FUNC8 (y, 0)))
	      && FUNC16 (FUNC13 (FUNC8 (x, 1)),
					 FUNC13 (FUNC8 (y, 1))));
    }
  else if (FUNC7 (x))
    return FUNC16 (FUNC13 (FUNC8 (x, 0)),
				   FUNC13 (FUNC8 (y, 0)));

  /* Compare the elements.  If any pair of corresponding elements
     fail to match, return 0 for the whole things.

     Limit cases to types which actually appear in addresses.  */

  fmt = FUNC3 (code);
  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      switch (fmt[i])
	{
	case 'i':
	  if (FUNC9 (x, i) != FUNC9 (y, i))
	    return 0;
	  break;

	case 'E':
	  /* Two vectors must have the same length.  */
	  if (FUNC12 (x, i) != FUNC12 (y, i))
	    return 0;

	  /* And the corresponding elements must match.  */
	  for (j = 0; j < FUNC12 (x, i); j++)
	    if (FUNC16 (FUNC13 (FUNC11 (x, i, j)),
					FUNC13 (FUNC11 (y, i, j))) == 0)
	      return 0;
	  break;

	case 'e':
	  if (FUNC16 (FUNC13 (FUNC8 (x, i)),
				      FUNC13 (FUNC8 (y, i))) == 0)
	    return 0;
	  break;

	  /* This can happen for asm operands.  */
	case 's':
	  if (FUNC15 (FUNC10 (x, i), FUNC10 (y, i)))
	    return 0;
	  break;

	/* This can happen for an asm which clobbers memory.  */
	case '0':
	  break;

	  /* It is believed that rtx's at this level will never
	     contain anything but integers and other rtx's,
	     except for within LABEL_REFs and SYMBOL_REFs.  */
	default:
	  FUNC14 ();
	}
    }
  return 1;
}