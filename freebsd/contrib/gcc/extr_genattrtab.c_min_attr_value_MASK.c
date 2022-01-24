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
#define  COND 130 
#define  CONST_STRING 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  IF_THEN_ELSE 128 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (rtx exp, int *unknownp)
{
  int current_min;
  int i, n;

  switch (FUNC0 (exp))
    {
    case CONST_STRING:
      current_min = FUNC5 (FUNC2 (exp, 0));
      break;

    case COND:
      current_min = FUNC6 (FUNC1 (exp, 1), unknownp);
      for (i = 0; i < FUNC4 (exp, 0); i += 2)
	{
	  n = FUNC6 (FUNC3 (exp, 0, i + 1), unknownp);
	  if (n < current_min)
	    current_min = n;
	}
      break;

    case IF_THEN_ELSE:
      current_min = FUNC6 (FUNC1 (exp, 1), unknownp);
      n = FUNC6 (FUNC1 (exp, 2), unknownp);
      if (n < current_min)
	current_min = n;
      break;

    default:
      *unknownp = 1;
      current_min = INT_MAX;
      break;
    }

  return current_min;
}