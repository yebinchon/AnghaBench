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
struct usbdrv_private {int /*<<< orphan*/  device; int /*<<< orphan*/  isolate_lock; int /*<<< orphan*/  driver_isolated; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct usbdrv_private *macp)
{
#ifndef CONFIG_SMP
    FUNC3(&(macp->isolate_lock));
#endif
    macp->driver_isolated = TRUE;
#ifndef CONFIG_SMP
    FUNC4(&(macp->isolate_lock));
#endif

    if (FUNC1(macp->device))
    {
        FUNC0(macp->device);
        FUNC2(macp->device);
    }
}