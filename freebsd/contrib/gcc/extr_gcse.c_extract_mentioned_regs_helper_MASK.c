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
#define  ADDR_DIFF_VEC 143 
#define  ADDR_VEC 142 
#define  CC0 141 
#define  CONST 140 
#define  CONST_DOUBLE 139 
#define  CONST_INT 138 
#define  CONST_VECTOR 137 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  LABEL_REF 136 
#define  MEM 135 
#define  PC 134 
#define  POST_DEC 133 
#define  POST_INC 132 
#define  PRE_DEC 131 
#define  PRE_INC 130 
#define  REG 129 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int) ; 
 int FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static rtx
FUNC8 (rtx x, rtx accum)
{
  int i;
  enum rtx_code code;
  const char * fmt;

  /* Repeat is used to turn tail-recursion into iteration.  */
 repeat:

  if (x == 0)
    return accum;

  code = FUNC0 (x);
  switch (code)
    {
    case REG:
      return FUNC6 (0, x, accum);

    case MEM:
      x = FUNC3 (x, 0);
      goto repeat;

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
      /* We do not run this function with arguments having side effects.  */
      FUNC7 ();

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
      return accum;

    default:
      break;
    }

  i = FUNC2 (code) - 1;
  fmt = FUNC1 (code);

  for (; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  rtx tem = FUNC3 (x, i);

	  /* If we are about to do the last recursive call
	     needed at this level, change it into iteration.  */
	  if (i == 0)
	    {
	      x = tem;
	      goto repeat;
	    }

	  accum = FUNC8 (tem, accum);
	}
      else if (fmt[i] == 'E')
	{
	  int j;

	  for (j = 0; j < FUNC5 (x, i); j++)
	    accum = FUNC8 (FUNC4 (x, i, j), accum);
	}
    }

  return accum;
}