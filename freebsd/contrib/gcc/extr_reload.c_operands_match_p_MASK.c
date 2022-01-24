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
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
#define  CONST_DOUBLE 131 
#define  CONST_INT 130 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (size_t) ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
#define  LABEL_REF 129 
 scalar_t__ POST_DEC ; 
 scalar_t__ POST_INC ; 
 scalar_t__ POST_MODIFY ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_INC ; 
 scalar_t__ PRE_MODIFY ; 
 scalar_t__ REG ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (size_t) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int** hard_regno_nregs ; 
 scalar_t__ FUNC17 (int,size_t,int /*<<< orphan*/ ,size_t) ; 

int
FUNC18 (rtx x, rtx y)
{
  int i;
  RTX_CODE code = FUNC0 (x);
  const char *fmt;
  int success_2;

  if (x == y)
    return 1;
  if ((code == REG || (code == SUBREG && FUNC6 (FUNC9 (x))))
      && (FUNC6 (y) || (FUNC0 (y) == SUBREG
				  && FUNC6 (FUNC9 (y)))))
    {
      int j;

      if (code == SUBREG)
	{
	  i = FUNC5 (FUNC9 (x));
	  if (i >= FIRST_PSEUDO_REGISTER)
	    goto slow;
	  i += FUNC17 (FUNC5 (FUNC9 (x)),
				    FUNC1 (FUNC9 (x)),
				    FUNC8 (x),
				    FUNC1 (x));
	}
      else
	i = FUNC5 (x);

      if (FUNC0 (y) == SUBREG)
	{
	  j = FUNC5 (FUNC9 (y));
	  if (j >= FIRST_PSEUDO_REGISTER)
	    goto slow;
	  j += FUNC17 (FUNC5 (FUNC9 (y)),
				    FUNC1 (FUNC9 (y)),
				    FUNC8 (y),
				    FUNC1 (y));
	}
      else
	j = FUNC5 (y);

      /* On a WORDS_BIG_ENDIAN machine, point to the last register of a
	 multiple hard register group of scalar integer registers, so that
	 for example (reg:DI 0) and (reg:SI 1) will be considered the same
	 register.  */
      if (WORDS_BIG_ENDIAN && FUNC2 (FUNC1 (x)) > UNITS_PER_WORD
	  && FUNC7 (FUNC1 (x))
	  && i < FIRST_PSEUDO_REGISTER)
	i += hard_regno_nregs[i][FUNC1 (x)] - 1;
      if (WORDS_BIG_ENDIAN && FUNC2 (FUNC1 (y)) > UNITS_PER_WORD
	  && FUNC7 (FUNC1 (y))
	  && j < FIRST_PSEUDO_REGISTER)
	j += hard_regno_nregs[j][FUNC1 (y)] - 1;

      return i == j;
    }
  /* If two operands must match, because they are really a single
     operand of an assembler insn, then two postincrements are invalid
     because the assembler insn would increment only once.
     On the other hand, a postincrement matches ordinary indexing
     if the postincrement is the output operand.  */
  if (code == POST_DEC || code == POST_INC || code == POST_MODIFY)
    return FUNC18 (FUNC10 (x, 0), y);
  /* Two preincrements are invalid
     because the assembler insn would increment only once.
     On the other hand, a preincrement matches ordinary indexing
     if the preincrement is the input operand.
     In this case, return 2, since some callers need to do special
     things when this happens.  */
  if (FUNC0 (y) == PRE_DEC || FUNC0 (y) == PRE_INC
      || FUNC0 (y) == PRE_MODIFY)
    return FUNC18 (x, FUNC10 (y, 0)) ? 2 : 0;

 slow:

  /* Now we have disposed of all the cases in which different rtx codes
     can match.  */
  if (code != FUNC0 (y))
    return 0;

  /* (MULT:SI x y) and (MULT:HI x y) are NOT equivalent.  */
  if (FUNC1 (x) != FUNC1 (y))
    return 0;

  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
      return 0;

    case LABEL_REF:
      return FUNC10 (x, 0) == FUNC10 (y, 0);
    case SYMBOL_REF:
      return FUNC12 (x, 0) == FUNC12 (y, 0);

    default:
      break;
    }

  /* Compare the elements.  If any pair of corresponding elements
     fail to match, return 0 for the whole things.  */

  success_2 = 0;
  fmt = FUNC3 (code);
  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      int val, j;
      switch (fmt[i])
	{
	case 'w':
	  if (FUNC15 (x, i) != FUNC15 (y, i))
	    return 0;
	  break;

	case 'i':
	  if (FUNC11 (x, i) != FUNC11 (y, i))
	    return 0;
	  break;

	case 'e':
	  val = FUNC18 (FUNC10 (x, i), FUNC10 (y, i));
	  if (val == 0)
	    return 0;
	  /* If any subexpression returns 2,
	     we should return 2 if we are successful.  */
	  if (val == 2)
	    success_2 = 1;
	  break;

	case '0':
	  break;

	case 'E':
	  if (FUNC14 (x, i) != FUNC14 (y, i))
	    return 0;
	  for (j = FUNC14 (x, i) - 1; j >= 0; --j)
	    {
	      val = FUNC18 (FUNC13 (x, i, j), FUNC13 (y, i, j));
	      if (val == 0)
		return 0;
	      if (val == 2)
		success_2 = 1;
	    }
	  break;

	  /* It is believed that rtx's at this level will never
	     contain anything but integers and other rtx's,
	     except for within LABEL_REFs and SYMBOL_REFs.  */
	default:
	  FUNC16 ();
	}
    }
  return 1 + success_2;
}