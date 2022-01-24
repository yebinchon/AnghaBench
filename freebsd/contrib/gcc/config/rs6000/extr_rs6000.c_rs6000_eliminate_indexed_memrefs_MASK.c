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
 scalar_t__ MEM ; 
 scalar_t__ REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (rtx operands[2])
{
  if (FUNC0 (operands[0]) == MEM
      && FUNC0 (FUNC1 (operands[0], 0)) != REG
      && ! FUNC3 (FUNC1 (operands[0], 0))
      && ! reload_in_progress)
    operands[0]
      = FUNC4 (operands[0],
			       FUNC2 (FUNC1 (operands[0], 0)));

  if (FUNC0 (operands[1]) == MEM
      && FUNC0 (FUNC1 (operands[1], 0)) != REG
      && ! FUNC3 (FUNC1 (operands[1], 0))
      && ! reload_in_progress)
    operands[1]
      = FUNC4 (operands[1],
			       FUNC2 (FUNC1 (operands[1], 0)));
}