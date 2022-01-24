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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  BLKmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char,char const*) ; 
 int /*<<< orphan*/  CONST_DOUBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char,char const*) ; 
 int /*<<< orphan*/  CONST_INT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char,char const*) ; 
 int /*<<< orphan*/  CONST_VECTOR ; 
 int /*<<< orphan*/  FUNC4 (char,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_VECTOR_FLOAT ; 
 int /*<<< orphan*/  NO_REGS ; 
 int /*<<< orphan*/  POST_DEC ; 
 int /*<<< orphan*/  POST_INC ; 
 int /*<<< orphan*/  PRE_DEC ; 
 int /*<<< orphan*/  PRE_INC ; 
 int /*<<< orphan*/  FUNC14 (char,char const*) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_pic ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC22 (rtx op, const char *constraint)
{
  int result = 0;

  /* Use constrain_operands after reload.  */
  FUNC17 (!reload_completed);

  while (*constraint)
    {
      char c = *constraint;
      int len;
      switch (c)
	{
	case ',':
	  constraint++;
	  continue;
	case '=':
	case '+':
	case '*':
	case '%':
	case '!':
	case '#':
	case '&':
	case '?':
	  break;

	case '0': case '1': case '2': case '3': case '4':
	case '5': case '6': case '7': case '8': case '9':
	  /* For best results, our caller should have given us the
	     proper matching constraint, but we can't actually fail
	     the check if they didn't.  Indicate that results are
	     inconclusive.  */
	  do
	    constraint++;
	  while (FUNC11 (*constraint));
	  if (! result)
	    result = -1;
	  continue;

	case 'p':
	  if (FUNC16 (op, VOIDmode))
	    result = 1;
	  break;

	case 'm':
	case 'V': /* non-offsettable */
	  if (FUNC19 (op, VOIDmode))
	    result = 1;
	  break;

	case 'o': /* offsettable */
	  if (FUNC20 (op))
	    result = 1;
	  break;

	case '<':
	  /* ??? Before flow, auto inc/dec insns are not supposed to exist,
	     excepting those that expand_call created.  Further, on some
	     machines which do not have generalized auto inc/dec, an inc/dec
	     is not a memory_operand.

	     Match any memory and hope things are resolved after reload.  */

	  if (FUNC13 (op)
	      && (1
		  || FUNC7 (FUNC15 (op, 0)) == PRE_DEC
		  || FUNC7 (FUNC15 (op, 0)) == POST_DEC))
	    result = 1;
	  break;

	case '>':
	  if (FUNC13 (op)
	      && (1
		  || FUNC7 (FUNC15 (op, 0)) == PRE_INC
		  || FUNC7 (FUNC15 (op, 0)) == POST_INC))
	    result = 1;
	  break;

	case 'E':
	case 'F':
	  if (FUNC7 (op) == CONST_DOUBLE
	      || (FUNC7 (op) == CONST_VECTOR
		  && FUNC9 (FUNC8 (op)) == MODE_VECTOR_FLOAT))
	    result = 1;
	  break;

	case 'G':
	  if (FUNC7 (op) == CONST_DOUBLE
	      && FUNC2 (op, 'G', constraint))
	    result = 1;
	  break;
	case 'H':
	  if (FUNC7 (op) == CONST_DOUBLE
	      && FUNC2 (op, 'H', constraint))
	    result = 1;
	  break;

	case 's':
	  if (FUNC7 (op) == CONST_INT
	      || (FUNC7 (op) == CONST_DOUBLE
		  && FUNC8 (op) == VOIDmode))
	    break;
	  /* Fall through.  */

	case 'i':
	  if (FUNC0 (op) && (! flag_pic || FUNC12 (op)))
	    result = 1;
	  break;

	case 'n':
	  if (FUNC7 (op) == CONST_INT
	      || (FUNC7 (op) == CONST_DOUBLE
		  && FUNC8 (op) == VOIDmode))
	    result = 1;
	  break;

	case 'I':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'I', constraint))
	    result = 1;
	  break;
	case 'J':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'J', constraint))
	    result = 1;
	  break;
	case 'K':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'K', constraint))
	    result = 1;
	  break;
	case 'L':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'L', constraint))
	    result = 1;
	  break;
	case 'M':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'M', constraint))
	    result = 1;
	  break;
	case 'N':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'N', constraint))
	    result = 1;
	  break;
	case 'O':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'O', constraint))
	    result = 1;
	  break;
	case 'P':
	  if (FUNC7 (op) == CONST_INT
	      && FUNC3 (FUNC10 (op), 'P', constraint))
	    result = 1;
	  break;

	case 'X':
	  result = 1;
	  break;

	case 'g':
	  if (FUNC18 (op, VOIDmode))
	    result = 1;
	  break;

	default:
	  /* For all other letters, we first check for a register class,
	     otherwise it is an EXTRA_CONSTRAINT.  */
	  if (FUNC14 (c, constraint) != NO_REGS)
	    {
	    case 'r':
	      if (FUNC8 (op) == BLKmode)
		break;
	      if (FUNC21 (op, VOIDmode))
		result = 1;
	    }
#ifdef EXTRA_CONSTRAINT_STR
	  else if (EXTRA_CONSTRAINT_STR (op, c, constraint))
	    result = 1;
	  else if (EXTRA_MEMORY_CONSTRAINT (c, constraint)
		   /* Every memory operand can be reloaded to fit.  */
		   && memory_operand (op, VOIDmode))
	    result = 1;
	  else if (EXTRA_ADDRESS_CONSTRAINT (c, constraint)
		   /* Every address operand can be reloaded to fit.  */
		   && address_operand (op, VOIDmode))
	    result = 1;
#endif
	  break;
	}
      len = FUNC1 (c, constraint);
      do
	constraint++;
      while (--len && *constraint);
      if (len)
	return 0;
    }

  return result;
}