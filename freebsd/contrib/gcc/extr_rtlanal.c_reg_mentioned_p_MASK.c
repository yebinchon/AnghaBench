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
#define  CC0 134 
#define  CONST_DOUBLE 133 
#define  CONST_INT 132 
#define  CONST_VECTOR 131 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int LABEL_REF ; 
#define  PC 130 
#define  REG 129 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  SCRATCH 128 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

int
FUNC9 (rtx reg, rtx in)
{
  const char *fmt;
  int i;
  enum rtx_code code;

  if (in == 0)
    return 0;

  if (reg == in)
    return 1;

  if (FUNC0 (in) == LABEL_REF)
    return reg == FUNC5 (in, 0);

  code = FUNC0 (in);

  switch (code)
    {
      /* Compare registers by number.  */
    case REG:
      return FUNC4 (reg) && FUNC3 (in) == FUNC3 (reg);

      /* These codes have no constituent expressions
	 and are unique.  */
    case SCRATCH:
    case CC0:
    case PC:
      return 0;

    case CONST_INT:
    case CONST_VECTOR:
    case CONST_DOUBLE:
      /* These are kept unique for a given value.  */
      return 0;

    default:
      break;
    }

  if (FUNC0 (reg) == code && FUNC8 (reg, in))
    return 1;

  fmt = FUNC1 (code);

  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
	{
	  int j;
	  for (j = FUNC7 (in, i) - 1; j >= 0; j--)
	    if (FUNC9 (reg, FUNC6 (in, i, j)))
	      return 1;
	}
      else if (fmt[i] == 'e'
	       && FUNC9 (reg, FUNC5 (in, i)))
	return 1;
    }
  return 0;
}