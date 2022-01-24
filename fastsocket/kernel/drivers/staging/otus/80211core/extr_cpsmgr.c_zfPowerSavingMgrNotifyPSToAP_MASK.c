#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
struct TYPE_7__ {scalar_t__ txUnicastFrm; scalar_t__ txBroadcastFrm; scalar_t__ txMulticastFrm; } ;
struct TYPE_5__ {int tempWakeUp; scalar_t__ lastTxUnicastFrm; scalar_t__ lastTxBroadcastFrm; scalar_t__ lastTxMulticastFrm; } ;
struct TYPE_6__ {TYPE_1__ psMgr; } ;
struct TYPE_8__ {TYPE_3__ commTally; TYPE_2__ sta; } ;

/* Variables and functions */
 TYPE_4__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zdev_t *dev)
{
    FUNC3(dev);
    FUNC1();

    if ( (wd->sta.psMgr.tempWakeUp != 1)&&
         (wd->sta.psMgr.lastTxUnicastFrm != wd->commTally.txUnicastFrm ||
          wd->sta.psMgr.lastTxBroadcastFrm != wd->commTally.txBroadcastFrm ||
          wd->sta.psMgr.lastTxMulticastFrm != wd->commTally.txMulticastFrm) )
    {
        FUNC2(dev);
        wd->sta.psMgr.lastTxUnicastFrm = wd->commTally.txUnicastFrm;
        wd->sta.psMgr.lastTxBroadcastFrm = wd->commTally.txBroadcastFrm;
        wd->sta.psMgr.lastTxMulticastFrm = wd->commTally.txMulticastFrm;
        FUNC4(dev);

        FUNC0(dev, 1);
    }
}