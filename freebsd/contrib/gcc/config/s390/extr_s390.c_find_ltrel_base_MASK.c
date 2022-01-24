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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_LTREL_BASE ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static rtx
FUNC7 (rtx x)
{
  int i, j;
  const char *fmt;

  if (FUNC0 (x) == UNSPEC
      && FUNC4 (x, 1) == UNSPEC_LTREL_BASE)
    return FUNC5 (x, 0, 0);

  fmt = FUNC1 (FUNC0 (x));
  for (i = FUNC2 (FUNC0 (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
        {
          rtx fnd = FUNC7 (FUNC3 (x, i));
	  if (fnd)
	    return fnd;
        }
      else if (fmt[i] == 'E')
        {
          for (j = 0; j < FUNC6 (x, i); j++)
	    {
              rtx fnd = FUNC7 (FUNC5 (x, i, j));
	      if (fnd)
		return fnd;
	    }
        }
    }

  return NULL_RTX;
}