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
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {int frequency; TYPE_2__ ap; } ;
struct TYPE_4__ {size_t qosType; int /*<<< orphan*/  rcCell; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_3 ; 
 TYPE_3__* wd ; 
 int* zcRateToPhyCtrl ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev, u16_t* addr, u32_t* phyCtrl,
                                u8_t* qosType, u16_t* rcProbingFlag)
{
    u16_t id;
    u8_t rate;

    FUNC5(dev);

    FUNC3();

    FUNC4(dev);

    if ((id = FUNC0(dev, addr)) != 0xffff)
    {
        rate = (u8_t)FUNC1(dev, &wd->ap.staTable[id].rcCell, rcProbingFlag);
#ifdef ZM_AP_DEBUG
        //rate = 15;
#endif
        *phyCtrl = zcRateToPhyCtrl[rate];
        *qosType = wd->ap.staTable[id].qosType;
    }
    else
    {
        if (wd->frequency < 3000)
        {
            /* CCK 1M */
            //header[2] = 0x0f00;          //PHY control L
            //header[3] = 0x0000;          //PHY control H
            *phyCtrl = 0x00000F00;
        }
        else
        {
            /* CCK 6M */
            //header[2] = 0x0f01;          //PHY control L
            //header[3] = 0x000B;          //PHY control H
            *phyCtrl = 0x000B0F01;
        }
        *qosType = 0;
    }

    FUNC6(dev);

    FUNC2(ZM_LV_3, "PhyCtrl=", *phyCtrl);
    return;
}