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
typedef  size_t u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_6__ {size_t oppositeCount; TYPE_1__* oppositeInfo; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_2__ sta; } ;
struct TYPE_7__ {size_t* operationRateSet; } ;
struct TYPE_5__ {TYPE_3__ rcCell; int /*<<< orphan*/  macAddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 TYPE_4__* wd ; 
 int /*<<< orphan*/ * zcRateToPhyCtrl ; 
 scalar_t__ FUNC1 (size_t*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev, u16_t* macAddr, u32_t* phyCtrl,
        u16_t* rcProbingFlag)
{
    u8_t   addr[6], i;
    u8_t   rate;
    FUNC5(dev);
    FUNC3();

    FUNC0(macAddr, addr);
    *phyCtrl = 0;

    if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        FUNC4(dev);
        rate = (u8_t)FUNC2(dev, &wd->sta.oppositeInfo[0].rcCell, rcProbingFlag);
//#ifdef ZM_FB50
        //rate = 27;
//#endif
        *phyCtrl = zcRateToPhyCtrl[rate];
        FUNC6(dev);
    }
    else
    {
        FUNC4(dev);
        for(i=0; i<wd->sta.oppositeCount; i++)
        {
            if ( addr[0] && 0x01 == 1 ) // The default beacon transmitted rate is CCK and 1 Mbps , but the a mode should use
                                        // OFDM modulation and 6Mbps to transmit beacon.
            {
                //rate = (u8_t)zfRateCtrlGetTxRate(dev, &wd->sta.oppositeInfo[i].rcCell, rcProbingFlag);
                rate = wd->sta.oppositeInfo[i].rcCell.operationRateSet[0];
                *phyCtrl = zcRateToPhyCtrl[rate];
                break;
            }
            else if ( FUNC1(addr, wd->sta.oppositeInfo[i].macAddr, 6) )
            {
                rate = (u8_t)FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, rcProbingFlag);
                *phyCtrl = zcRateToPhyCtrl[rate];
                break;
            }
        }
        FUNC6(dev);
    }

    return;
}