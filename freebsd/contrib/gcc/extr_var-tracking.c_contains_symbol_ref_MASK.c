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
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC6 (rtx x)
{
  const char *fmt;
  RTX_CODE code;
  int i;

  if (!x)
    return false;

  code = FUNC0 (x);
  if (code == SYMBOL_REF)
    return true;

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  if (FUNC6 (FUNC3 (x, i)))
	    return true;
	}
      else if (fmt[i] == 'E')
	{
	  int j;
	  for (j = 0; j < FUNC5 (x, i); j++)
	    if (FUNC6 (FUNC4 (x, i, j)))
	      return true;
	}
    }

  return false;
}