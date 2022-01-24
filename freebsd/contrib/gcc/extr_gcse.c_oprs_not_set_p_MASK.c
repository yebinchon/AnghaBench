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
#define  ADDR_DIFF_VEC 139 
#define  ADDR_VEC 138 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  CC0 137 
#define  CONST 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
#define  CONST_VECTOR 133 
 int FUNC1 (scalar_t__) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  LABEL_REF 132 
#define  MEM 131 
#define  PC 130 
#define  REG 129 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_set_bitmap ; 

__attribute__((used)) static int
FUNC11 (rtx x, rtx insn)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0)
    return 1;

  code = FUNC1 (x);
  switch (code)
    {
    case PC:
    case CC0:
    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
      return 1;

    case MEM:
      if (FUNC10 (FUNC0 (insn),
				  FUNC4 (insn), x, 0))
	return 0;
      else
	return FUNC11 (FUNC7 (x, 0), insn);

    case REG:
      return ! FUNC6 (reg_set_bitmap, FUNC5 (x));

    default:
      break;
    }

  for (i = FUNC3 (code) - 1, fmt = FUNC2 (code); i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  /* If we are about to do the last recursive call
	     needed at this level, change it into iteration.
	     This function is called enough to be worth it.  */
	  if (i == 0)
	    return FUNC11 (FUNC7 (x, i), insn);

	  if (! FUNC11 (FUNC7 (x, i), insn))
	    return 0;
	}
      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC9 (x, i); j++)
	  if (! FUNC11 (FUNC8 (x, i, j), insn))
	    return 0;
    }

  return 1;
}