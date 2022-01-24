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
#define  ASM_OPERANDS 139 
#define  CALL 138 
#define  CC0 137 
#define  CONST 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  LABEL_REF 133 
#define  MEM 132 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PC 131 
#define  REG 130 
#define  SYMBOL_REF 129 
#define  UNSPEC_VOLATILE 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC8 (rtx x)
{
  enum rtx_code code = FUNC0 (x);
  int i, j;
  const char *fmt;

  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case SYMBOL_REF:
    case CONST:
    case LABEL_REF:
      return true;

    case PC:
    case CC0:
    case UNSPEC_VOLATILE:
    case CALL:
      return false;

    case REG:
      return true;

    case MEM:
      /* Load/store motion is done elsewhere.  ??? Perhaps also add it here?
	 It should not be hard, and might be faster than "elsewhere".  */

      /* Just handle the most trivial case where we load from an unchanging
	 location (most importantly, pic tables).  */
      if (FUNC3 (x))
	break;

      return false;

    case ASM_OPERANDS:
      /* Don't mess with insns declared volatile.  */
      if (FUNC4 (x))
	return false;
      break;

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  if (!FUNC8 (FUNC5 (x, i)))
	    return false;
	}
      else if (fmt[i] == 'E')
	{
	  for (j = 0; j < FUNC7 (x, i); j++)
	    if (!FUNC8 (FUNC6 (x, i, j)))
	      return false;
	}
    }

  return true;
}