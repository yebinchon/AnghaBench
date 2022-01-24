#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct block_device {int /*<<< orphan*/ * bd_holder; int /*<<< orphan*/  bd_holders; TYPE_1__* bd_contains; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bd_holder; int /*<<< orphan*/  bd_holders; } ;

/* Variables and functions */
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct block_device *bdev)
{
	FUNC0(&bdev_lock);
	if (!--bdev->bd_contains->bd_holders)
		bdev->bd_contains->bd_holder = NULL;
	if (!--bdev->bd_holders)
		bdev->bd_holder = NULL;
	FUNC1(&bdev_lock);
}