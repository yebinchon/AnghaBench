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
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MACHOPIC_JUST_INDIRECT ; 
 scalar_t__ MINUS ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3 (rtx op)
{
  if (MACHOPIC_JUST_INDIRECT)
    {
      while (FUNC0 (op) == CONST)
	op = FUNC1 (op, 0);

      if (FUNC0 (op) == SYMBOL_REF)
	return FUNC2 (op);
      else
	return 0;
    }

  while (FUNC0 (op) == CONST)
    op = FUNC1 (op, 0);

  if (FUNC0 (op) == MINUS
      && FUNC0 (FUNC1 (op, 0)) == SYMBOL_REF
      && FUNC0 (FUNC1 (op, 1)) == SYMBOL_REF
      && FUNC2 (FUNC1 (op, 0))
      && FUNC2 (FUNC1 (op, 1)))
      return 1;

  return 0;
}