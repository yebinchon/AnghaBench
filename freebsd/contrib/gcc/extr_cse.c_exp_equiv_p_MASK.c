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
#define  AND 143 
#define  ASM_OPERANDS 142 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
#define  CC0 141 
#define  CONST_DOUBLE 140 
#define  CONST_INT 139 
#define  EQ 138 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 char* FUNC8 (int) ; 
 int FUNC9 (int) ; 
#define  IOR 137 
#define  LABEL_REF 136 
#define  MEM 135 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
#define  MULT 134 
#define  NE 133 
#define  PC 132 
#define  PLUS 131 
#define  REG 130 
 unsigned int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
#define  SYMBOL_REF 129 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 
#define  XOR 128 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int) ; 
 scalar_t__ FUNC19 (scalar_t__,int,int) ; 
 int FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC24 (rtx x, rtx y, int validate, bool for_gcse)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  /* Note: it is incorrect to assume an expression is equivalent to itself
     if VALIDATE is nonzero.  */
  if (x == y && !validate)
    return 1;

  if (x == 0 || y == 0)
    return x == y;

  code = FUNC6 (x);
  if (code != FUNC6 (y))
    return 0;

  /* (MULT:SI x y) and (MULT:HI x y) are NOT equivalent.  */
  if (FUNC7 (x) != FUNC7 (y))
    return 0;

  switch (code)
    {
    case PC:
    case CC0:
    case CONST_INT:
    case CONST_DOUBLE:
      return x == y;

    case LABEL_REF:
      return FUNC16 (x, 0) == FUNC16 (y, 0);

    case SYMBOL_REF:
      return FUNC18 (x, 0) == FUNC18 (y, 0);

    case REG:
      if (for_gcse)
	return FUNC12 (x) == FUNC12 (y);
      else
	{
	  unsigned int regno = FUNC12 (y);
	  unsigned int i;
	  unsigned int endregno
	    = regno + (regno >= FIRST_PSEUDO_REGISTER ? 1
		       : hard_regno_nregs[regno][FUNC7 (y)]);

	  /* If the quantities are not the same, the expressions are not
	     equivalent.  If there are and we are not to validate, they
	     are equivalent.  Otherwise, ensure all regs are up-to-date.  */

	  if (FUNC14 (FUNC12 (x)) != FUNC14 (regno))
	    return 0;

	  if (! validate)
	    return 1;

	  for (i = regno; i < endregno; i++)
	    if (FUNC13 (i) != FUNC15 (i))
	      return 0;

	  return 1;
	}

    case MEM:
      if (for_gcse)
	{
	  /* A volatile mem should not be considered equivalent to any
	     other.  */
	  if (FUNC11 (x) || FUNC11 (y))
	    return 0;

	  /* Can't merge two expressions in different alias sets, since we
	     can decide that the expression is transparent in a block when
	     it isn't, due to it being set with the different alias set.

	     Also, can't merge two expressions with different MEM_ATTRS.
	     They could e.g. be two different entities allocated into the
	     same space on the stack (see e.g. PR25130).  In that case, the
	     MEM addresses can be the same, even though the two MEMs are
	     absolutely not equivalent.  
   
	     But because really all MEM attributes should be the same for
	     equivalent MEMs, we just use the invariant that MEMs that have
	     the same attributes share the same mem_attrs data structure.  */
	  if (FUNC10 (x) != FUNC10 (y))
	    return 0;
	}
      break;

    /*  For commutative operations, check both orders.  */
    case PLUS:
    case MULT:
    case AND:
    case IOR:
    case XOR:
    case NE:
    case EQ:
      return ((FUNC24 (FUNC16 (x, 0), FUNC16 (y, 0),
			     validate, for_gcse)
	       && FUNC24 (FUNC16 (x, 1), FUNC16 (y, 1),
				validate, for_gcse))
	      || (FUNC24 (FUNC16 (x, 0), FUNC16 (y, 1),
				validate, for_gcse)
		  && FUNC24 (FUNC16 (x, 1), FUNC16 (y, 0),
				   validate, for_gcse)));

    case ASM_OPERANDS:
      /* We don't use the generic code below because we want to
	 disregard filename and line numbers.  */

      /* A volatile asm isn't equivalent to any other.  */
      if (FUNC11 (x) || FUNC11 (y))
	return 0;

      if (FUNC7 (x) != FUNC7 (y)
	  || FUNC23 (FUNC5 (x), FUNC5 (y))
	  || FUNC23 (FUNC3 (x),
		     FUNC3 (y))
	  || FUNC4 (x) != FUNC4 (y)
	  || FUNC2 (x) != FUNC2 (y))
	return 0;

      if (FUNC2 (x))
	{
	  for (i = FUNC2 (x) - 1; i >= 0; i--)
	    if (! FUNC24 (FUNC0 (x, i),
			       FUNC0 (y, i),
			       validate, for_gcse)
		|| FUNC23 (FUNC1 (x, i),
			   FUNC1 (y, i)))
	      return 0;
	}

      return 1;

    default:
      break;
    }

  /* Compare the elements.  If any pair of corresponding elements
     fail to match, return 0 for the whole thing.  */

  fmt = FUNC8 (code);
  for (i = FUNC9 (code) - 1; i >= 0; i--)
    {
      switch (fmt[i])
	{
	case 'e':
	  if (! FUNC24 (FUNC16 (x, i), FUNC16 (y, i),
			      validate, for_gcse))
	    return 0;
	  break;

	case 'E':
	  if (FUNC20 (x, i) != FUNC20 (y, i))
	    return 0;
	  for (j = 0; j < FUNC20 (x, i); j++)
	    if (! FUNC24 (FUNC19 (x, i, j), FUNC19 (y, i, j),
				validate, for_gcse))
	      return 0;
	  break;

	case 's':
	  if (FUNC23 (FUNC18 (x, i), FUNC18 (y, i)))
	    return 0;
	  break;

	case 'i':
	  if (FUNC17 (x, i) != FUNC17 (y, i))
	    return 0;
	  break;

	case 'w':
	  if (FUNC21 (x, i) != FUNC21 (y, i))
	    return 0;
	  break;

	case '0':
	case 't':
	  break;

	default:
	  FUNC22 ();
	}
    }

  return 1;
}