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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (rtx cond1, rtx cond2)
{
  if (FUNC0 (cond1)
      && FUNC0 (cond2)
      && FUNC1 (cond1) == FUNC3 (cond2, NULL)
      && FUNC2 (cond1, 0) == FUNC2 (cond2, 0)
      && FUNC2 (cond1, 1) == FUNC2 (cond2, 1))
    return 1;
  return 0;
}