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
struct TYPE_4__ {scalar_t__ ticks; scalar_t__ maxSleepPeriods; } ;
struct TYPE_5__ {TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t *dev)
{
    FUNC5(dev);
    FUNC3();

    /* disable TBTT interrupt when change from connection to disconnect */
    if (FUNC2(dev)) {
        FUNC0(dev, 0, 0, 0);
        FUNC1(dev);
        return;
    }

    FUNC4(dev);
    wd->sta.psMgr.ticks++;

    if ( wd->sta.psMgr.ticks < wd->sta.psMgr.maxSleepPeriods )
    {
        FUNC6(dev);
        return;
    }
    else
    {
        wd->sta.psMgr.ticks = 0;
    }

    FUNC6(dev);

    FUNC1(dev);
}