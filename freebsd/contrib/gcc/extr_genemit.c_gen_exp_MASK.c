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
typedef  int RTX_CODE ;

/* Variables and functions */
#define  ADDRESS 140 
#define  CC0 139 
#define  CLOBBER 138 
#define  CONST_DOUBLE 137 
#define  CONST_INT 136 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 char* HOST_WIDE_INT_PRINT_DEC_C ; 
 int FUNC5 (scalar_t__) ; 
#define  MATCH_DUP 135 
#define  MATCH_OPERAND 134 
#define  MATCH_OPERATOR 133 
#define  MATCH_OP_DUP 132 
#define  MATCH_PARALLEL 131 
#define  MATCH_PAR_DUP 130 
#define  MATCH_SCRATCH 129 
 int MAX_SAVED_CONST_INT ; 
#define  PC 128 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int STORE_FLAG_VALUE ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int FUNC9 (scalar_t__,int) ; 
 char* FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 int FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void
FUNC18 (rtx x, enum rtx_code subroutine_type, char *used)
{
  RTX_CODE code;
  int i;
  int len;
  const char *fmt;

  if (x == 0)
    {
      FUNC17 ("NULL_RTX");
      return;
    }

  code = FUNC0 (x);

  switch (code)
    {
    case MATCH_OPERAND:
    case MATCH_DUP:
      if (used)
	{
	  if (used[FUNC9 (x, 0)])
	    {
	      FUNC17 ("copy_rtx (operand%d)", FUNC9 (x, 0));
	      return;
	    }
	  used[FUNC9 (x, 0)] = 1;
	}
      FUNC17 ("operand%d", FUNC9 (x, 0));
      return;

    case MATCH_OP_DUP:
      FUNC17 ("gen_rtx_fmt_");
      for (i = 0; i < FUNC12 (x, 1); i++)
	FUNC17 ("e");
      FUNC17 (" (GET_CODE (operand%d), ", FUNC9 (x, 0));
      if (FUNC1 (x) == VOIDmode)
	FUNC17 ("GET_MODE (operand%d)", FUNC9 (x, 0));
      else
	FUNC17 ("%smode", FUNC2 (FUNC1 (x)));
      for (i = 0; i < FUNC12 (x, 1); i++)
	{
	  FUNC17 (",\n\t\t");
	  FUNC18 (FUNC11 (x, 1, i), subroutine_type, used);
	}
      FUNC17 (")");
      return;

    case MATCH_OPERATOR:
      FUNC17 ("gen_rtx_fmt_");
      for (i = 0; i < FUNC12 (x, 2); i++)
	FUNC17 ("e");
      FUNC17 (" (GET_CODE (operand%d)", FUNC9 (x, 0));
      FUNC17 (", %smode", FUNC2 (FUNC1 (x)));
      for (i = 0; i < FUNC12 (x, 2); i++)
	{
	  FUNC17 (",\n\t\t");
	  FUNC18 (FUNC11 (x, 2, i), subroutine_type, used);
	}
      FUNC17 (")");
      return;

    case MATCH_PARALLEL:
    case MATCH_PAR_DUP:
      FUNC17 ("operand%d", FUNC9 (x, 0));
      return;

    case MATCH_SCRATCH:
      FUNC15 (x, subroutine_type);
      return;

    case ADDRESS:
      FUNC13 ("ADDRESS expression code used in named instruction pattern");

    case PC:
      FUNC17 ("pc_rtx");
      return;
    case CLOBBER:
      if (FUNC7 (FUNC8 (x, 0)))
	{
	  FUNC17 ("gen_hard_reg_clobber (%smode, %i)", FUNC2 (FUNC1 (FUNC8 (x, 0))),
			  			     FUNC6 (FUNC8 (x, 0)));
	  return;
	}
      break;

    case CC0:
      FUNC17 ("cc0_rtx");
      return;

    case CONST_INT:
      if (FUNC5 (x) == 0)
	FUNC17 ("const0_rtx");
      else if (FUNC5 (x) == 1)
	FUNC17 ("const1_rtx");
      else if (FUNC5 (x) == -1)
	FUNC17 ("constm1_rtx");
      else if (-MAX_SAVED_CONST_INT <= FUNC5 (x)
	  && FUNC5 (x) <= MAX_SAVED_CONST_INT)
	FUNC17 ("const_int_rtx[MAX_SAVED_CONST_INT + (%d)]",
		(int) FUNC5 (x));
      else if (FUNC5 (x) == STORE_FLAG_VALUE)
	FUNC17 ("const_true_rtx");
      else
	{
	  FUNC17 ("GEN_INT (");
	  FUNC17 (HOST_WIDE_INT_PRINT_DEC_C, FUNC5 (x));
	  FUNC17 (")");
	}
      return;

    case CONST_DOUBLE:
      /* These shouldn't be written in MD files.  Instead, the appropriate
	 routines in varasm.c should be called.  */
      FUNC14 ();

    default:
      break;
    }

  FUNC17 ("gen_rtx_");
  FUNC16 (code);
  FUNC17 (" (%smode", FUNC2 (FUNC1 (x)));

  fmt = FUNC3 (code);
  len = FUNC4 (code);
  for (i = 0; i < len; i++)
    {
      if (fmt[i] == '0')
	break;
      FUNC17 (",\n\t");
      switch (fmt[i])
	{
	case 'e': case 'u':
	  FUNC18 (FUNC8 (x, i), subroutine_type, used);
	  break;

	case 'i':
	  FUNC17 ("%u", FUNC9 (x, i));
	  break;

	case 's':
	  FUNC17 ("\"%s\"", FUNC10 (x, i));
	  break;

	case 'E':
	  {
	    int j;
	    FUNC17 ("gen_rtvec (%d", FUNC12 (x, i));
	    for (j = 0; j < FUNC12 (x, i); j++)
	      {
		FUNC17 (",\n\t\t");
		FUNC18 (FUNC11 (x, i, j), subroutine_type, used);
	      }
	    FUNC17 (")");
	    break;
	  }

	default:
	  FUNC14 ();
	}
    }
  FUNC17 (")");
}