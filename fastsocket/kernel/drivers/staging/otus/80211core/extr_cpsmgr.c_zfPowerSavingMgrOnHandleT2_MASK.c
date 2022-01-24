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
struct TYPE_6__ {scalar_t__ tempWakeUp; int /*<<< orphan*/  lastTxMulticastFrm; int /*<<< orphan*/  lastTxBroadcastFrm; int /*<<< orphan*/  lastTxUnicastFrm; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {TYPE_2__ psMgr; } ;
struct TYPE_5__ {int /*<<< orphan*/  txMulticastFrm; int /*<<< orphan*/  txBroadcastFrm; int /*<<< orphan*/  txUnicastFrm; } ;
struct TYPE_8__ {TYPE_3__ sta; TYPE_1__ commTally; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_PS_MSG_STATE_SLEEP ; 
 TYPE_4__* wd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(zdev_t* dev)
{
    FUNC6(dev);
    FUNC4();

    // Wait until the Null pkt is transmitted
    if ( FUNC0(dev) != FUNC1(dev) )
    {
        return;
    }

    FUNC5(dev);
    wd->sta.psMgr.state = ZM_PS_MSG_STATE_SLEEP;
    wd->sta.psMgr.lastTxUnicastFrm = wd->commTally.txUnicastFrm;
    wd->sta.psMgr.lastTxBroadcastFrm = wd->commTally.txBroadcastFrm;
    wd->sta.psMgr.lastTxMulticastFrm = wd->commTally.txMulticastFrm;
    FUNC7(dev);

    // Let CHIP sleep now
FUNC3("zfPowerSavingMgrOnHandleT2 zzzz....\n");
    FUNC2(dev, 1);
    wd->sta.psMgr.tempWakeUp = 0;
}