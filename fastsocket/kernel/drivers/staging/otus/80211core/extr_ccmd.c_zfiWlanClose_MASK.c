#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_5__ {int /*<<< orphan*/  uapsdQ; } ;
struct TYPE_4__ {int /*<<< orphan*/  uapsdQ; } ;
struct TYPE_6__ {TYPE_2__ sta; TYPE_1__ ap; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_WLAN_STATE_CLOSEDED ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u16_t FUNC8(zdev_t *dev)
{
	FUNC7(dev);

	FUNC6(ZM_LV_0, "enter");

	wd->state = ZM_WLAN_STATE_CLOSEDED;

	/* zfiWlanDisable(dev, 1); */
	FUNC5(dev);

	FUNC3(dev);

	/* Disable MAC */
	/* Disable PHY */
	/* Disable RF */

	FUNC2(dev);

	FUNC4(dev, wd->ap.uapsdQ);
	FUNC4(dev, wd->sta.uapsdQ);

	FUNC1(dev);

#ifdef ZM_ENABLE_AGGREGATION
	/* add by honda */
	zfAggRxFreeBuf(dev, 1);  /* 1 for release structure memory */
	/* end of add by honda */
#endif

	FUNC6(ZM_LV_0, "exit");

	return 0;
}