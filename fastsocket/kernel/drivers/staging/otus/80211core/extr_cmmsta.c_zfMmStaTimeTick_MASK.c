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
struct TYPE_2__ {scalar_t__ wlanMode; int tick; int /*<<< orphan*/  swSniffer; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_AP ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev)
{
    FUNC6(dev);

    /* airopeek */
    if (wd->wlanMode != ZM_MODE_AP && !wd->swSniffer)
    {
        if ( wd->tick & 1 )
        {
            FUNC5(dev);
        }

        FUNC3(dev);
        FUNC4(dev);
        FUNC2(dev);
        FUNC1(dev);
    }

#ifdef ZM_ENABLE_AGGREGATION
    /*
     * add by honda
     */
    zfAggScanAndClear(dev, wd->tick);
#endif
}