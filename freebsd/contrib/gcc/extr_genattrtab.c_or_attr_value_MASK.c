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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (rtx exp, int *unknownp)
{
  int current_or;
  int i;

  switch (FUNC0 (exp))
    {
    case CONST_STRING:
      current_or = FUNC5 (FUNC2 (exp, 0));
      break;

    case COND:
      current_or = FUNC6 (FUNC1 (exp, 1), unknownp);
      for (i = 0; i < FUNC4 (exp, 0); i += 2)
	current_or |= FUNC6 (FUNC3 (exp, 0, i + 1), unknownp);
      break;

    case IF_THEN_ELSE:
      current_or = FUNC6 (FUNC1 (exp, 1), unknownp);
      current_or |= FUNC6 (FUNC1 (exp, 2), unknownp);
      break;

    default:
      *unknownp = 1;
      current_or = -1;
      break;
    }

  return current_or;
}