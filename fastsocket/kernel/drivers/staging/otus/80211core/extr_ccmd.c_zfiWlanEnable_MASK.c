#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsTrafTally {int dummy; } ;
struct TYPE_3__ {int cmMicFailureCount; } ;
struct TYPE_4__ {int queueFlushed; TYPE_1__ sta; int /*<<< orphan*/  trafTally; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_EVENT_CM_TIMER ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u16_t FUNC8(zdev_t *dev)
{
	u16_t ret;

	FUNC7(dev);

	FUNC6(ZM_LV_1, "Enable Wlan");

	FUNC1(dev);

	FUNC5((u8_t *) &wd->trafTally, sizeof(struct zsTrafTally));

	/* Reset cmMicFailureCount to 0 for new association request */
	if (wd->sta.cmMicFailureCount == 1) {
		FUNC3(dev, ZM_EVENT_CM_TIMER);
		wd->sta.cmMicFailureCount = 0;
	}

	FUNC0(dev);
	if ((wd->queueFlushed & 0x10) != 0)
		FUNC2(dev);

	ret = FUNC4(dev);

	return ret;
}