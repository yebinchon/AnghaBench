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
typedef  size_t u8_t ;
struct zsStaPSList {int dummy; } ;
struct TYPE_4__ {scalar_t__ tempWakeUp; } ;
struct TYPE_5__ {int* capability; size_t ibssPSDataCount; size_t staPSDataCount; int /*<<< orphan*/  uapsdQ; scalar_t__ qosInfo; TYPE_1__ psMgr; scalar_t__ wmeConnected; int /*<<< orphan*/  staPSList; int /*<<< orphan*/ * staPSDataQueue; int /*<<< orphan*/ * ibssPSDataQueue; scalar_t__ TPCEnable; scalar_t__ DFSEnable; } ;
struct TYPE_6__ {int dtim; TYPE_2__ sta; } ;

/* Variables and functions */
 int ZM_BIT_0 ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, u8_t bInit)
{
    u8_t   i;

    FUNC4(dev);

    FUNC0(dev);

    wd->dtim = 1;
    wd->sta.capability[0] = 0x01;
    wd->sta.capability[1] = 0x00;
    /* 802.11h */
    if (wd->sta.DFSEnable || wd->sta.TPCEnable)
        wd->sta.capability[1] |= ZM_BIT_0;

    /* release queued packets */
    for(i=0; i<wd->sta.ibssPSDataCount; i++)
    {
        FUNC3(dev, wd->sta.ibssPSDataQueue[i], 0);
    }

    for(i=0; i<wd->sta.staPSDataCount; i++)
    {
        FUNC3(dev, wd->sta.staPSDataQueue[i], 0);
    }

    wd->sta.ibssPSDataCount = 0;
    wd->sta.staPSDataCount = 0;
    FUNC2((u8_t*) &wd->sta.staPSList, sizeof(struct zsStaPSList));

    wd->sta.wmeConnected = 0;
    wd->sta.psMgr.tempWakeUp = 0;
    wd->sta.qosInfo = 0;
    FUNC1(dev, wd->sta.uapsdQ);

    return;

}