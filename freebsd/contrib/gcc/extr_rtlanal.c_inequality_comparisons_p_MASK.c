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
#define  CC0 145 
#define  CONST 144 
#define  CONST_DOUBLE 143 
#define  CONST_INT 142 
#define  CONST_VECTOR 141 
#define  GE 140 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  GEU 139 
#define  GT 138 
#define  GTU 137 
#define  LABEL_REF 136 
#define  LE 135 
#define  LEU 134 
#define  LT 133 
#define  LTU 132 
#define  PC 131 
#define  REG 130 
#define  SCRATCH 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6 (rtx x)
{
  const char *fmt;
  int len, i;
  enum rtx_code code = FUNC0 (x);

  switch (code)
    {
    case REG:
    case SCRATCH:
    case PC:
    case CC0:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case CONST:
    case LABEL_REF:
    case SYMBOL_REF:
      return 0;

    case LT:
    case LTU:
    case GT:
    case GTU:
    case LE:
    case LEU:
    case GE:
    case GEU:
      return 1;

    default:
      break;
    }

  len = FUNC2 (code);
  fmt = FUNC1 (code);

  for (i = 0; i < len; i++)
    {
      if (fmt[i] == 'e')
	{
	  if (FUNC6 (FUNC3 (x, i)))
	    return 1;
	}
      else if (fmt[i] == 'E')
	{
	  int j;
	  for (j = FUNC5 (x, i) - 1; j >= 0; j--)
	    if (FUNC6 (FUNC4 (x, i, j)))
	      return 1;
	}
    }

  return 0;
}