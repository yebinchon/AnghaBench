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
#define  ADDR_DIFF_VEC 145 
#define  ADDR_VEC 144 
#define  CC0 143 
#define  CONST 142 
#define  CONST_DOUBLE 141 
#define  CONST_INT 140 
#define  CONST_VECTOR 139 
 int /*<<< orphan*/  FIRST_PSEUDO_REGISTER ; 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  LABEL_REF 138 
#define  MEM 137 
#define  PC 136 
#define  POST_DEC 135 
#define  POST_INC 134 
#define  POST_MODIFY 133 
#define  PRE_DEC 132 
#define  PRE_INC 131 
#define  PRE_MODIFY 130 
#define  REG 129 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC11 (rtx x, rtx insn, bool after_insn)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0)
    return 1;

  code = FUNC0 (x);
  switch (code)
    {
    case REG:
      /* We are called after register allocation.  */
      FUNC8 (FUNC4 (x) < FIRST_PSEUDO_REGISTER);
      if (after_insn)
	return !FUNC10 (x, FUNC3 (insn) - 1);
      else
	return !FUNC10 (x, 0);

    case MEM:
      if (FUNC9 (FUNC3 (insn), x, after_insn))
	return 0;
      else
	return FUNC11 (FUNC5 (x, 0), insn, after_insn);

    case PC:
    case CC0: /*FIXME*/
    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
      return 1;

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
    case PRE_MODIFY:
    case POST_MODIFY:
      if (after_insn)
	return 0;
      break;

    default:
      break;
    }

  for (i = FUNC2 (code) - 1, fmt = FUNC1 (code); i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  if (! FUNC11 (FUNC5 (x, i), insn, after_insn))
	    return 0;
	}
      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC7 (x, i); j++)
	  if (! FUNC11 (FUNC6 (x, i, j), insn, after_insn))
	    return 0;
    }

  return 1;
}