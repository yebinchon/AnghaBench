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
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC9 (rtx x, rtx store_pattern, int after)
{
  const char * fmt;
  int i, j;
  int ret = false;

  if (!x)
    return false;

  if (FUNC0 (x) == SET)
    x = FUNC4 (x);

  if (FUNC3 (x))
    {
      if (FUNC8 (x, store_pattern, after))
	return true;
    }

  /* Recursively process the insn.  */
  fmt = FUNC1 (FUNC0 (x));

  for (i = FUNC2 (FUNC0 (x)) - 1; i >= 0 && !ret; i--)
    {
      if (fmt[i] == 'e')
	ret |= FUNC9 (FUNC5 (x, i), store_pattern, after);
      else if (fmt[i] == 'E')
	for (j = FUNC7 (x, i) - 1; j >= 0; j--)
	  ret |= FUNC9 (FUNC6 (x, i, j), store_pattern, after);
    }
  return ret;
}