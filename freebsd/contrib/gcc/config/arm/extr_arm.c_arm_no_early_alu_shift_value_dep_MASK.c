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
 scalar_t__ COND_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6 (rtx producer, rtx consumer)
{
  rtx value = FUNC2 (producer);
  rtx op = FUNC2 (consumer);
  rtx early_op;

  if (FUNC1 (value) == COND_EXEC)
    value = FUNC0 (value);
  if (FUNC1 (value) == PARALLEL)
    value = FUNC4 (value, 0, 0);
  value = FUNC3 (value, 0);
  if (FUNC1 (op) == COND_EXEC)
    op = FUNC0 (op);
  if (FUNC1 (op) == PARALLEL)
    op = FUNC4 (op, 0, 0);
  op = FUNC3 (op, 1);

  early_op = FUNC3 (op, 0);

  /* This is either an actual independent shift, or a shift applied to
     the first operand of another operation.  We want the value being
     shifted, in either case.  */
  if (FUNC1 (early_op) != REG)
    early_op = FUNC3 (early_op, 0);

  return !FUNC5 (value, early_op);
}