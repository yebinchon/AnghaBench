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
struct TYPE_3__ {int /*<<< orphan*/  activescanTickPerChannel; int /*<<< orphan*/  passiveScanTickPerChannel; scalar_t__ bPassiveScan; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_EVENT_IN_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_TIMEOUT_SCAN ; 
 int /*<<< orphan*/  ZM_TICK_IN_SCAN ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zdev_t* dev)
{
    FUNC4(dev);

    FUNC2();

//printk("zfScanMgrEventSetFreqCompleteCb #1\n");

    FUNC3(dev);
    FUNC1(dev, ZM_EVENT_IN_SCAN, ZM_TICK_IN_SCAN);
    if (wd->sta.bPassiveScan)
    {
        FUNC1(dev, ZM_EVENT_TIMEOUT_SCAN, wd->sta.passiveScanTickPerChannel);
    }
    else
    {
        FUNC1(dev, ZM_EVENT_TIMEOUT_SCAN, wd->sta.activescanTickPerChannel);
    }
    FUNC5(dev);

    FUNC0(dev);
}