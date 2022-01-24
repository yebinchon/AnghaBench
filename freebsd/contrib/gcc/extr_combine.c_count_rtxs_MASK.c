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
 int FUNC0 (scalar_t__) ; 
 char FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5 (rtx x)
{
  enum rtx_code code = FUNC0 (x);
  const char *fmt;
  int i, ret = 1;

  if (FUNC1 (code) == '2'
      || FUNC1 (code) == 'c')
    {
      rtx x0 = FUNC4 (x, 0);
      rtx x1 = FUNC4 (x, 1);

      if (x0 == x1)
	return 1 + 2 * FUNC5 (x0);

      if ((FUNC1 (FUNC0 (x1)) == '2'
	   || FUNC1 (FUNC0 (x1)) == 'c')
	  && (x0 == FUNC4 (x1, 0) || x0 == FUNC4 (x1, 1)))
	return 2 + 2 * FUNC5 (x0)
	       + FUNC5 (x == FUNC4 (x1, 0)
			     ? FUNC4 (x1, 1) : FUNC4 (x1, 0));

      if ((FUNC1 (FUNC0 (x0)) == '2'
	   || FUNC1 (FUNC0 (x0)) == 'c')
	  && (x1 == FUNC4 (x0, 0) || x1 == FUNC4 (x0, 1)))
	return 2 + 2 * FUNC5 (x1)
	       + FUNC5 (x == FUNC4 (x0, 0)
			     ? FUNC4 (x0, 1) : FUNC4 (x0, 0));
    }

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      ret += FUNC5 (FUNC4 (x, i));

  return ret;
}