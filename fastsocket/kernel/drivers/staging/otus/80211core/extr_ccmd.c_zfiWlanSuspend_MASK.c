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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_2__ {int /*<<< orphan*/  halState; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_HAL_STATE_INIT ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u16_t FUNC4(zdev_t *dev)
{
	FUNC2(dev);
	FUNC0();

	/* Change the HAL state to init so that any packet
	can't be transmitted between resume & HAL reinit.
	This would cause the chip hang issue in OTUS.
	*/
	FUNC1(dev);
	wd->halState = ZM_HAL_STATE_INIT;
	FUNC3(dev);

	return 0;
}