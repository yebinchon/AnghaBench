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
#define  CC0 137 
#define  CODE_LABEL 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
#define  CONST_VECTOR 133 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  MEM 132 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  PC 131 
#define  REG 130 
#define  SET 129 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int,int) ; 
 int FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 

int
FUNC10 (rtx x, rtx find, int count_dest)
{
  int i, j;
  enum rtx_code code;
  const char *format_ptr;
  int count;

  if (x == find)
    return 1;

  code = FUNC0 (x);

  switch (code)
    {
    case REG:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case CODE_LABEL:
    case PC:
    case CC0:
      return 0;

    case MEM:
      if (FUNC3 (find) && FUNC9 (x, find))
	return 1;
      break;

    case SET:
      if (FUNC4 (x) == find && ! count_dest)
	return FUNC10 (FUNC5 (x), find, count_dest);
      break;

    default:
      break;
    }

  format_ptr = FUNC1 (code);
  count = 0;

  for (i = 0; i < FUNC2 (code); i++)
    {
      switch (*format_ptr++)
	{
	case 'e':
	  count += FUNC10 (FUNC6 (x, i), find, count_dest);
	  break;

	case 'E':
	  for (j = 0; j < FUNC8 (x, i); j++)
	    count += FUNC10 (FUNC7 (x, i, j), find, count_dest);
	  break;
	}
    }
  return count;
}