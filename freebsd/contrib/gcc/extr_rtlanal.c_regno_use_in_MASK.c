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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

rtx
FUNC8 (unsigned int regno, rtx x)
{
  const char *fmt;
  int i, j;
  rtx tem;

  if (FUNC4 (x) && FUNC3 (x) == regno)
    return x;

  fmt = FUNC1 (FUNC0 (x));
  for (i = FUNC2 (FUNC0 (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  if ((tem = FUNC8 (regno, FUNC5 (x, i))))
	    return tem;
	}
      else if (fmt[i] == 'E')
	for (j = FUNC7 (x, i) - 1; j >= 0; j--)
	  if ((tem = FUNC8 (regno , FUNC6 (x, i, j))))
	    return tem;
    }

  return NULL_RTX;
}