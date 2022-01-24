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
#define  ASHIFT 143 
#define  ASHIFTRT 142 
#define  CONST 141 
#define  CONST_DOUBLE 140 
#define  CONST_INT 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
#define  DIV 138 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 137 
#define  LSHIFTRT 136 
#define  MINUS 135 
#define  MOD 134 
#define  MULT 133 
#define  PLUS 132 
#define  SET 131 
#define  SYMBOL_REF 130 
#define  UDIV 129 
#define  UMOD 128 

__attribute__((used)) static bool
FUNC8 (rtx x, int code, int outer_code, int *total)
{
  switch (code)
    {
    case CONST_INT:
      switch (outer_code)
        {
        case SET:
	  *total = FUNC1 (FUNC7 (x)) ? 0 : FUNC4 (1);
	  return true;
        case PLUS:
	  if (FUNC0 (FUNC7 (x)))
	    *total = 0;
	  else if (FUNC1 (FUNC7 (x)))
	    *total = 1;
	  else
	    *total = FUNC4 (1);
	  return true;
        default:
	  if (FUNC2 (FUNC7 (x)) || FUNC3 (FUNC7 (x)))
	    *total = 0;
	  else
	    *total = FUNC4 (1);
	  return true;
	}

    case CONST_DOUBLE:
      *total = FUNC4 (1);
      return true;

    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
      *total = FUNC4 (3);
      return true;

    case MULT:
      /* For multiplies wider than HImode, we have to go to the FPU,
         which normally involves copies.  Plus there's the latency
         of the multiply itself, and the latency of the instructions to
         transfer integer regs to FP regs.  */
      /* ??? Check for FP mode.  */
      if (FUNC6 (FUNC5 (x)) > 2)
        *total = FUNC4 (10);
      else
	*total = FUNC4 (2);
      return true;

    case PLUS:
    case MINUS:
    case ASHIFT:
    case ASHIFTRT:
    case LSHIFTRT:
      *total = FUNC4 (1);
      return true;

    case DIV:
    case UDIV:
    case MOD:
    case UMOD:
      /* We make divide expensive, so that divide-by-constant will be
         optimized to a multiply.  */
      *total = FUNC4 (60);
      return true;

    default:
      return false;
    }
}