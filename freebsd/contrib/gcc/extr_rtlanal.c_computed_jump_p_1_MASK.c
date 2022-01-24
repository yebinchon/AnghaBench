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
#define  CONST 137 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_DOUBLE 136 
#define  CONST_INT 135 
#define  CONST_VECTOR 134 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  IF_THEN_ELSE 133 
#define  LABEL_REF 132 
#define  MEM 131 
#define  PC 130 
#define  REG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7 (rtx x)
{
  enum rtx_code code = FUNC1 (x);
  int i, j;
  const char *fmt;

  switch (code)
    {
    case LABEL_REF:
    case PC:
      return 0;

    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case REG:
      return 1;

    case MEM:
      return ! (FUNC1 (FUNC4 (x, 0)) == SYMBOL_REF
		&& FUNC0 (FUNC4 (x, 0)));

    case IF_THEN_ELSE:
      return (FUNC7 (FUNC4 (x, 1))
	      || FUNC7 (FUNC4 (x, 2)));

    default:
      break;
    }

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e'
	  && FUNC7 (FUNC4 (x, i)))
	return 1;

      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC6 (x, i); j++)
	  if (FUNC7 (FUNC5 (x, i, j)))
	    return 1;
    }

  return 0;
}