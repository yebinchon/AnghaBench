#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int /*<<< orphan*/  replacement; } ;

/* Variables and functions */
#define  CC0 140 
#define  CONST 139 
#define  CONST_DOUBLE 138 
#define  CONST_INT 137 
#define  CONST_VECTOR 136 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  HIGH 135 
#define  LABEL_REF 134 
#define  LO_SUM 133 
#define  MEM 132 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  PC 131 
#define  REG 130 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
#define  SET 129 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* reg_equiv ; 
 int /*<<< orphan*/  rtx_varies_p ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11 (rtx memref, rtx x)
{
  int i, j;
  const char *fmt;
  enum rtx_code code = FUNC0 (x);

  switch (code)
    {
    case CONST_INT:
    case CONST:
    case LABEL_REF:
    case SYMBOL_REF:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case PC:
    case CC0:
    case HIGH:
    case LO_SUM:
      return 0;

    case REG:
      return (reg_equiv[FUNC4 (x)].replacement
	      && FUNC11 (memref,
				      reg_equiv[FUNC4 (x)].replacement));

    case MEM:
      if (FUNC10 (memref, VOIDmode, x, rtx_varies_p))
	return 1;
      break;

    case SET:
      /* If we are setting a MEM, it doesn't count (its address does), but any
	 other SET_DEST that has a MEM in it is referencing the MEM.  */
      if (FUNC3 (FUNC5 (x)))
	{
	  if (FUNC11 (memref, FUNC7 (FUNC5 (x), 0)))
	    return 1;
	}
      else if (FUNC11 (memref, FUNC5 (x)))
	return 1;

      return FUNC11 (memref, FUNC6 (x));

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    switch (fmt[i])
      {
      case 'e':
	if (FUNC11 (memref, FUNC7 (x, i)))
	  return 1;
	break;
      case 'E':
	for (j = FUNC9 (x, i) - 1; j >= 0; j--)
	  if (FUNC11 (memref, FUNC8 (x, i, j)))
	    return 1;
	break;
      }

  return 0;
}