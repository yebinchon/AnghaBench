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
struct display_device {int /*<<< orphan*/  lock; TYPE_1__* driver; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* suspend ) (struct display_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct display_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  (*) (struct display_device*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct display_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, pm_message_t state)
{
	struct display_device *dsp = FUNC0(dev);

	FUNC2(&dsp->lock);
	if (FUNC1(dsp->driver->suspend))
		dsp->driver->suspend(dsp, state);
	FUNC3(&dsp->lock);
	return 0;
}