#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ (* commutative_p ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  ADDR_DIFF_VEC 136 
#define  ADDR_VEC 135 
#define  CC0 134 
#define  CODE_LABEL 133 
#define  CONST_DOUBLE 132 
#define  CONST_INT 131 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  LABEL_REF 130 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
#define  PC 129 
 int REG ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int SUBREG ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  UNKNOWN ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int* reg_renumber ; 
 int FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC23 (int,scalar_t__,int,scalar_t__) ; 
 TYPE_1__ targetm ; 

int
FUNC24 (rtx x, rtx y)
{
  int i;
  enum rtx_code code = FUNC0 (x);
  const char *fmt;

  if (x == y)
    return 1;

  if ((code == REG || (code == SUBREG && FUNC7 (FUNC9 (x))))
      && (FUNC7 (y) || (FUNC0 (y) == SUBREG
				  && FUNC7 (FUNC9 (y)))))
    {
      int reg_x = -1, reg_y = -1;
      int byte_x = 0, byte_y = 0;

      if (FUNC1 (x) != FUNC1 (y))
	return 0;

      /* If we haven't done any renumbering, don't
	 make any assumptions.  */
      if (reg_renumber == 0)
	return FUNC20 (x, y);

      if (code == SUBREG)
	{
	  reg_x = FUNC6 (FUNC9 (x));
	  byte_x = FUNC8 (x);

	  if (reg_renumber[reg_x] >= 0)
	    {
	      reg_x = FUNC23 (reg_renumber[reg_x],
					   FUNC1 (FUNC9 (x)),
					   byte_x,
					   FUNC1 (x));
	      byte_x = 0;
	    }
	}
      else
	{
	  reg_x = FUNC6 (x);
	  if (reg_renumber[reg_x] >= 0)
	    reg_x = reg_renumber[reg_x];
	}

      if (FUNC0 (y) == SUBREG)
	{
	  reg_y = FUNC6 (FUNC9 (y));
	  byte_y = FUNC8 (y);

	  if (reg_renumber[reg_y] >= 0)
	    {
	      reg_y = FUNC23 (reg_renumber[reg_y],
					   FUNC1 (FUNC9 (y)),
					   byte_y,
					   FUNC1 (y));
	      byte_y = 0;
	    }
	}
      else
	{
	  reg_y = FUNC6 (y);
	  if (reg_renumber[reg_y] >= 0)
	    reg_y = reg_renumber[reg_y];
	}

      return reg_x >= 0 && reg_x == reg_y && byte_x == byte_y;
    }

  /* Now we have disposed of all the cases
     in which different rtx codes can match.  */
  if (code != FUNC0 (y))
    return 0;

  switch (code)
    {
    case PC:
    case CC0:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
    case CONST_INT:
    case CONST_DOUBLE:
      return 0;

    case LABEL_REF:
      /* We can't assume nonlocal labels have their following insns yet.  */
      if (FUNC4 (x) || FUNC4 (y))
	return FUNC11 (x, 0) == FUNC11 (y, 0);

      /* Two label-refs are equivalent if they point at labels
	 in the same position in the instruction stream.  */
      return (FUNC19 (FUNC11 (x, 0))
	      == FUNC19 (FUNC11 (y, 0)));

    case SYMBOL_REF:
      return FUNC13 (x, 0) == FUNC13 (y, 0);

    case CODE_LABEL:
      /* If we didn't match EQ equality above, they aren't the same.  */
      return 0;

    default:
      break;
    }

  /* (MULT:SI x y) and (MULT:HI x y) are NOT equivalent.  */

  if (FUNC1 (x) != FUNC1 (y))
    return 0;

  /* For commutative operations, the RTX match if the operand match in any
     order.  Also handle the simple binary and unary cases without a loop.  */
  if (targetm.commutative_p (x, UNKNOWN))
    return ((FUNC24 (FUNC11 (x, 0), FUNC11 (y, 0))
	     && FUNC24 (FUNC11 (x, 1), FUNC11 (y, 1)))
	    || (FUNC24 (FUNC11 (x, 0), FUNC11 (y, 1))
		&& FUNC24 (FUNC11 (x, 1), FUNC11 (y, 0))));
  else if (FUNC5 (x))
    return (FUNC24 (FUNC11 (x, 0), FUNC11 (y, 0))
	    && FUNC24 (FUNC11 (x, 1), FUNC11 (y, 1)));
  else if (FUNC10 (x))
    return FUNC24 (FUNC11 (x, 0), FUNC11 (y, 0));

  /* Compare the elements.  If any pair of corresponding elements
     fail to match, return 0 for the whole things.  */

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      int j;
      switch (fmt[i])
	{
	case 'w':
	  if (FUNC17 (x, i) != FUNC17 (y, i))
	    return 0;
	  break;

	case 'i':
	  if (FUNC12 (x, i) != FUNC12 (y, i))
	    return 0;
	  break;

	case 't':
	  if (FUNC14 (x, i) != FUNC14 (y, i))
	    return 0;
	  break;

	case 's':
	  if (FUNC21 (FUNC13 (x, i), FUNC13 (y, i)))
	    return 0;
	  break;

	case 'e':
	  if (! FUNC24 (FUNC11 (x, i), FUNC11 (y, i)))
	    return 0;
	  break;

	case 'u':
	  if (FUNC11 (x, i) != FUNC11 (y, i))
	    return 0;
	  /* Fall through.  */
	case '0':
	  break;

	case 'E':
	  if (FUNC16 (x, i) != FUNC16 (y, i))
	    return 0;
	  for (j = FUNC16 (x, i) - 1; j >= 0; j--)
	    if (!FUNC24 (FUNC15 (x, i, j), FUNC15 (y, i, j)))
	      return 0;
	  break;

	default:
	  FUNC18 ();
	}
    }
  return 1;
}