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
typedef  scalar_t__ u32_t ;
struct TYPE_2__ {scalar_t__ swSniffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t *dev, u32_t setValue)
{
	FUNC3(dev);

	wd->swSniffer = setValue;
	FUNC2(ZM_LV_0, "wd->swSniffer ", wd->swSniffer);
	if (setValue) {
		/* write register for sniffer mode */
		FUNC0(dev, 1);
		FUNC1(ZM_LV_1, "enalbe sniffer mode");
	} else {
		FUNC0(dev, 0);
		FUNC1(ZM_LV_0, "disalbe sniffer mode");
	}
}