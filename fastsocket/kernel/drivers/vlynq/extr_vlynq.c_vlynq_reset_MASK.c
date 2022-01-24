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
struct vlynq_device {TYPE_1__* local; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int VLYNQ_CTRL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vlynq_device *dev)
{
	FUNC2(FUNC1(&dev->local->control) | VLYNQ_CTRL_RESET,
			&dev->local->control);

	/* Wait for the devices to finish resetting */
	FUNC0(5);

	/* Remove reset bit */
	FUNC2(FUNC1(&dev->local->control) & ~VLYNQ_CTRL_RESET,
			&dev->local->control);

	/* Give some time for the devices to settle */
	FUNC0(5);
}