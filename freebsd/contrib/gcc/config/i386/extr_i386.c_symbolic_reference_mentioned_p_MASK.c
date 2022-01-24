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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6 (rtx op)
{
  const char *fmt;
  int i;

  if (FUNC0 (op) == SYMBOL_REF || FUNC0 (op) == LABEL_REF)
    return 1;

  fmt = FUNC1 (FUNC0 (op));
  for (i = FUNC2 (FUNC0 (op)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
	{
	  int j;

	  for (j = FUNC5 (op, i) - 1; j >= 0; j--)
	    if (FUNC6 (FUNC4 (op, i, j)))
	      return 1;
	}

      else if (fmt[i] == 'e' && FUNC6 (FUNC3 (op, i)))
	return 1;
    }

  return 0;
}