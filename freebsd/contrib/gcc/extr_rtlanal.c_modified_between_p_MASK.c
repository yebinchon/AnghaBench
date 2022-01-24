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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PC 130 
#define  REG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10 (rtx x, rtx start, rtx end)
{
  enum rtx_code code = FUNC0 (x);
  const char *fmt;
  int i, j;
  rtx insn;

  if (start == end)
    return 0;

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
      if (FUNC10 (FUNC5 (x, 0), start, end))
	return 1;
      if (FUNC3 (x))
	return 0;
      for (insn = FUNC4 (start); insn != end; insn = FUNC4 (insn))
	if (FUNC8 (x, insn))
	  return 1;
      return 0;
      break;

    case REG:
      return FUNC9 (x, start, end);

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e' && FUNC10 (FUNC5 (x, i), start, end))
	return 1;

      else if (fmt[i] == 'E')
	for (j = FUNC7 (x, i) - 1; j >= 0; j--)
	  if (FUNC10 (FUNC6 (x, i, j), start, end))
	    return 1;
    }

  return 0;
}