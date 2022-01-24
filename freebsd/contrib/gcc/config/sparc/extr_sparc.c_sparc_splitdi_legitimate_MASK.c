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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC4 (rtx reg, rtx mem)
{
  /* Punt if we are here by mistake.  */
  FUNC1 (reload_completed);

  /* We must have an offsettable memory reference.  */
  if (! FUNC3 (mem))
    return 0;

  /* If we have legitimate args for ldd/std, we do not want
     the split to happen.  */
  if ((FUNC0 (reg) % 2) == 0
      && FUNC2 (mem, 8))
    return 0;

  /* Success.  */
  return 1;
}