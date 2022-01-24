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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6 (rtx producer, rtx consumer)
{
  rtx value = FUNC2 (producer);
  rtx addr = FUNC2 (consumer);

  if (FUNC1 (value) == COND_EXEC)
    value = FUNC0 (value);
  if (FUNC1 (value) == PARALLEL)
    value = FUNC4 (value, 0, 0);
  value = FUNC3 (value, 0);
  if (FUNC1 (addr) == COND_EXEC)
    addr = FUNC0 (addr);
  if (FUNC1 (addr) == PARALLEL)
    addr = FUNC4 (addr, 0, 0);
  addr = FUNC3 (addr, 0);

  return !FUNC5 (value, addr);
}