#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct posix_clock {TYPE_2__ cdev; TYPE_1__ ops; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  kref; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  posix_clock_file_operations ; 

int FUNC4(struct posix_clock *clk, dev_t devid)
{
	int err;

	FUNC3(&clk->kref);
	FUNC2(&clk->rwsem);

	FUNC1(&clk->cdev, &posix_clock_file_operations);
	clk->cdev.owner = clk->ops.owner;
	err = FUNC0(&clk->cdev, devid, 1);

	return err;
}