#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int /*<<< orphan*/  close_paren; int /*<<< orphan*/  open_paren; } ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  CODE_LABEL 139 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  CONST 138 
#define  CONST_DOUBLE 137 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 136 
 int const FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 char* HOST_WIDE_INT_PRINT_DOUBLE_HEX ; 
 char* HOST_WIDE_INT_PRINT_HEX ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 135 
#define  MINUS 134 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PC 133 
#define  PLUS 132 
#define  SIGN_EXTEND 131 
#define  SUBREG 130 
#define  SYMBOL_REF 129 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ZERO_EXTEND 128 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  fail ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

void
FUNC20 (FILE *file, rtx x)
{
  char buf[256];

 restart:
  switch (FUNC6 (x))
    {
    case PC:
      FUNC18 ('.', file);
      break;

    case SYMBOL_REF:
      if (FUNC10 (x))
	FUNC16 (FUNC10 (x));
#ifdef ASM_OUTPUT_SYMBOL_REF
      ASM_OUTPUT_SYMBOL_REF (file, x);
#else
      FUNC13 (file, FUNC12 (x, 0));
#endif
      break;

    case LABEL_REF:
      x = FUNC11 (x, 0);
      /* Fall through.  */
    case CODE_LABEL:
      FUNC0 (buf, "L", FUNC3 (x));
#ifdef ASM_OUTPUT_LABEL_REF
      ASM_OUTPUT_LABEL_REF (file, buf);
#else
      FUNC13 (file, buf);
#endif
      break;

    case CONST_INT:
      FUNC14 (file, HOST_WIDE_INT_PRINT_DEC, FUNC8 (x));
      break;

    case CONST:
      /* This used to output parentheses around the expression,
	 but that does not work on the 386 (either ATT or BSD assembler).  */
      FUNC20 (file, FUNC11 (x, 0));
      break;

    case CONST_DOUBLE:
      if (FUNC7 (x) == VOIDmode)
	{
	  /* We can use %d if the number is one word and positive.  */
	  if (FUNC4 (x))
	    FUNC14 (file, HOST_WIDE_INT_PRINT_DOUBLE_HEX,
		     FUNC4 (x), FUNC5 (x));
	  else if (FUNC5 (x) < 0)
	    FUNC14 (file, HOST_WIDE_INT_PRINT_HEX, FUNC5 (x));
	  else
	    FUNC14 (file, HOST_WIDE_INT_PRINT_DEC, FUNC5 (x));
	}
      else
	/* We can't handle floating point constants;
	   PRINT_OPERAND must handle them.  */
	FUNC17 ("floating constant misused");
      break;

    case PLUS:
      /* Some assemblers need integer constants to appear last (eg masm).  */
      if (FUNC6 (FUNC11 (x, 0)) == CONST_INT)
	{
	  FUNC20 (file, FUNC11 (x, 1));
	  if (FUNC8 (FUNC11 (x, 0)) >= 0)
	    FUNC14 (file, "+");
	  FUNC20 (file, FUNC11 (x, 0));
	}
      else
	{
	  FUNC20 (file, FUNC11 (x, 0));
	  if (FUNC6 (FUNC11 (x, 1)) != CONST_INT
	      || FUNC8 (FUNC11 (x, 1)) >= 0)
	    FUNC14 (file, "+");
	  FUNC20 (file, FUNC11 (x, 1));
	}
      break;

    case MINUS:
      /* Avoid outputting things like x-x or x+5-x,
	 since some assemblers can't handle that.  */
      x = FUNC19 (x);
      if (FUNC6 (x) != MINUS)
	goto restart;

      FUNC20 (file, FUNC11 (x, 0));
      FUNC14 (file, "-");
      if ((FUNC6 (FUNC11 (x, 1)) == CONST_INT && FUNC8 (FUNC11 (x, 1)) >= 0)
	  || FUNC6 (FUNC11 (x, 1)) == PC
	  || FUNC6 (FUNC11 (x, 1)) == SYMBOL_REF)
	FUNC20 (file, FUNC11 (x, 1));
      else
	{
	  FUNC15 (targetm.asm_out.open_paren, file);
	  FUNC20 (file, FUNC11 (x, 1));
	  FUNC15 (targetm.asm_out.close_paren, file);
	}
      break;

    case ZERO_EXTEND:
    case SIGN_EXTEND:
    case SUBREG:
      FUNC20 (file, FUNC11 (x, 0));
      break;

    default:
#ifdef OUTPUT_ADDR_CONST_EXTRA
      OUTPUT_ADDR_CONST_EXTRA (file, x, fail);
      break;

    fail:
#endif
      FUNC17 ("invalid expression as operand");
    }
}