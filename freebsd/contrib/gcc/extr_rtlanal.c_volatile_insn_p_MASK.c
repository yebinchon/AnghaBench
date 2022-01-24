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
typedef  int RTX_CODE ;

/* Variables and functions */
#define  ADDR_DIFF_VEC 145 
#define  ADDR_VEC 144 
#define  ASM_INPUT 143 
#define  ASM_OPERANDS 142 
#define  CALL 141 
#define  CC0 140 
#define  CLOBBER 139 
#define  CONST 138 
#define  CONST_DOUBLE 137 
#define  CONST_INT 136 
#define  CONST_VECTOR 135 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  LABEL_REF 134 
#define  MEM 133 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  PC 132 
#define  REG 131 
#define  SCRATCH 130 
#define  SYMBOL_REF 129 
#define  UNSPEC_VOLATILE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

int
FUNC7 (rtx x)
{
  RTX_CODE code;

  code = FUNC0 (x);
  switch (code)
    {
    case LABEL_REF:
    case SYMBOL_REF:
    case CONST_INT:
    case CONST:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case CC0:
    case PC:
    case REG:
    case SCRATCH:
    case CLOBBER:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
    case CALL:
    case MEM:
      return 0;

    case UNSPEC_VOLATILE:
 /* case TRAP_IF: This isn't clear yet.  */
      return 1;

    case ASM_INPUT:
    case ASM_OPERANDS:
      if (FUNC3 (x))
	return 1;

    default:
      break;
    }

  /* Recursively scan the operands of this expression.  */

  {
    const char *fmt = FUNC1 (code);
    int i;

    for (i = FUNC2 (code) - 1; i >= 0; i--)
      {
	if (fmt[i] == 'e')
	  {
	    if (FUNC7 (FUNC4 (x, i)))
	      return 1;
	  }
	else if (fmt[i] == 'E')
	  {
	    int j;
	    for (j = 0; j < FUNC6 (x, i); j++)
	      if (FUNC7 (FUNC5 (x, i, j)))
		return 1;
	  }
      }
  }
  return 0;
}