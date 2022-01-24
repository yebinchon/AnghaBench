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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int MEM ; 
 scalar_t__ PLUS ; 
 int SIGN_EXTRACT ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (scalar_t__,int) ; 
 int ZERO_EXTRACT ; 

rtx
FUNC7 (rtx x, rtx reg, HOST_WIDE_INT plusconst)
{
  enum rtx_code code = FUNC0 (x);
  const char * const fmt = FUNC1 (code);
  int i;
  rtx value = 0;
  rtx tem;

  if (code == MEM && FUNC4 (x, 0) == reg && plusconst == 0)
    return x;

  if (code == MEM && FUNC0 (FUNC4 (x, 0)) == PLUS
      && FUNC4 (FUNC4 (x, 0), 0) == reg
      && FUNC0 (FUNC4 (FUNC4 (x, 0), 1)) == CONST_INT
      && FUNC3 (FUNC4 (FUNC4 (x, 0), 1)) == plusconst)
    return x;

  if (code == SIGN_EXTRACT || code == ZERO_EXTRACT)
    {
      /* If REG occurs inside a MEM used in a bit-field reference,
	 that is unacceptable.  */
      if (FUNC7 (FUNC4 (x, 0), reg, 0) != 0)
	return (rtx) (size_t) 1;
    }

  if (x == reg)
    return (rtx) (size_t) 1;

  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  tem = FUNC7 (FUNC4 (x, i), reg, plusconst);
	  if (value == 0)
	    value = tem;
	  else if (tem != 0)
	    return (rtx) (size_t) 1;
	}
      else if (fmt[i] == 'E')
	{
	  int j;
	  for (j = FUNC6 (x, i) - 1; j >= 0; j--)
	    {
	      tem = FUNC7 (FUNC5 (x, i, j), reg, plusconst);
	      if (value == 0)
		value = tem;
	      else if (tem != 0)
		return (rtx) (size_t) 1;
	    }
	}
    }

  return value;
}