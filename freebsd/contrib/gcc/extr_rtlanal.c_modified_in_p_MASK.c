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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  CC0 137 
#define  CONST 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
#define  CONST_VECTOR 133 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  LABEL_REF 132 
#define  MEM 131 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  PC 130 
#define  REG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9 (rtx x, rtx insn)
{
  enum rtx_code code = FUNC0 (x);
  const char *fmt;
  int i, j;

  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
      return 0;

    case PC:
    case CC0:
      return 1;

    case MEM:
      if (FUNC9 (FUNC4 (x, 0), insn))
	return 1;
      if (FUNC3 (x))
	return 0;
      if (FUNC7 (x, insn))
	return 1;
      return 0;
      break;

    case REG:
      return FUNC8 (x, insn);

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e' && FUNC9 (FUNC4 (x, i), insn))
	return 1;

      else if (fmt[i] == 'E')
	for (j = FUNC6 (x, i) - 1; j >= 0; j--)
	  if (FUNC9 (FUNC5 (x, i, j), insn))
	    return 1;
    }

  return 0;
}