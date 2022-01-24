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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_3__ {scalar_t__ flagFreqChanging; scalar_t__ bChannelScan; int ac0PriorityHigherThanAc2; scalar_t__ EnableHT; scalar_t__ bScheduleScan; scalar_t__ flagKeyChanging; scalar_t__ DFSDisableTx; } ;
struct TYPE_4__ {scalar_t__ halState; scalar_t__ wlanMode; int vtxqPushing; int /*<<< orphan*/  tick; TYPE_1__ sta; int /*<<< orphan*/  modeMDKEnable; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  ZM_EXTERNAL_ALLOC_BUF ; 
 scalar_t__ ZM_HAL_STATE_INIT ; 
 int /*<<< orphan*/  ZM_INTERNAL_ALLOC_BUF ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 scalar_t__ ZM_MODE_PSEUDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ZM_SUCCESS ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(zdev_t* dev)
{
    zbuf_t* buf;
    u16_t i;
    u16_t txed;
    u32_t freeTxd;
    u16_t err;
    u16_t skipFlag = 0;
    FUNC14(dev);
    FUNC12();



    //zm_debug_msg1("zfHpGetFreeTxdCount = ", zfHpGetFreeTxdCount(dev));

    if (wd->halState == ZM_HAL_STATE_INIT)
    {
        if (!wd->modeMDKEnable)
        {
            FUNC11("HAL is not ready for Tx");
        }
        return;
    }
    else if (wd->sta.DFSDisableTx)
    {
        FUNC11("return because 802.11h DFS Disable Tx");
        return;
    }
    else if (wd->sta.flagFreqChanging != 0)
    {
        //Hold until RF frequency changed
        return;
    }
    else if (( wd->sta.flagKeyChanging ) && ( wd->wlanMode != ZM_MODE_AP ))
    {
        return;
    }
#ifdef ZM_ENABLE_POWER_SAVE
    else if ( zfPowerSavingMgrIsSleeping(dev) )
    {
        //zm_debug_msg0("Packets queued since the MAC is in power-saving mode\n");
        return;
    }
#endif

    FUNC13(dev);
    if (wd->vtxqPushing != 0)
    {
        skipFlag = 1;
    }
    else
    {
        wd->vtxqPushing = 1;
    }
    FUNC15(dev);

    if (skipFlag == 1)
    {
        return;
    }

    while (1)
    {
        txed = 0;

        /* 2006.12.20, Serve Management queue */
        while( FUNC4(dev) > 0 )
        {
            if ((buf = FUNC2(dev)) != 0)
            {
                txed = 1;
                //zm_debug_msg2("send buf = ", buf);
                if ((err = FUNC6(dev, NULL, 0, NULL, 0, NULL, 0, buf, 0,
                        ZM_INTERNAL_ALLOC_BUF, 0, 0xff)) != ZM_SUCCESS)
                {
                    FUNC10(dev, buf, 0);
                }
            }
            else
            {
                break;
            }
        }
        if ((wd->sta.bScheduleScan) || ((wd->sta.bChannelScan == TRUE) && (FUNC8(dev))))
        {
            //Hold until Scan Stop
            wd->vtxqPushing = 0;
            return;
        }

#ifdef ZM_ENABLE_AGGREGATION
    #ifndef ZM_BYPASS_AGGR_SCHEDULING
        if( (wd->wlanMode == ZM_MODE_AP) ||
            (wd->wlanMode == ZM_MODE_INFRASTRUCTURE && wd->sta.EnableHT) ||
            (wd->wlanMode == ZM_MODE_PSEUDO) ) {

            zfAggTxScheduler(dev, 0);

            if (txed == 0) {
                wd->vtxqPushing = 0;
                return;
            }
            else {
                continue;
            }
        }
    #endif
#endif

        /* Service VTxQ[3] */
        for (i=0; i<4; i++)
        {
            if ((freeTxd = FUNC4(dev)) >= 3)
            {
                if ((buf = FUNC3(dev, 3)) != 0)
                {
                    txed = 1;
                    //zm_debug_msg2("send buf = ", buf);
                    FUNC9(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                    FUNC0(dev, wd->tick);
                }
            }
            else
            {
                break;
            }
        }

        /* Service VTxQ[2] */
        for (i=0; i<3; i++)
        {
            if ((freeTxd = FUNC4(dev)) >= (FUNC5(dev)*1/4))
            {
                if ((buf = FUNC3(dev, 2)) != 0)
                {
                    txed = 1;
                    FUNC9(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                    FUNC0(dev, wd->tick);
                }
                if (wd->sta.ac0PriorityHigherThanAc2 == 1)
                {
                    if ((buf = FUNC3(dev, 0)) != 0)
                    {
                        txed = 1;
                        FUNC9(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                        FUNC0(dev, wd->tick);
                    }
                }
            }
            else
            {
                break;
            }
        }

        /* Service VTxQ[0] */
        for (i=0; i<2; i++)
        {
            if ((freeTxd = FUNC4(dev)) >= (FUNC5(dev)*2/4))
            {
                if ((buf = FUNC3(dev, 0)) != 0)
                {
                    txed = 1;
                    FUNC9(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                    FUNC0(dev, wd->tick);
                }
            }
            else
            {
                break;
            }

        }

        /* Service VTxQ[1] */
        if ((freeTxd = FUNC4(dev)) >= (FUNC5(dev)*3/4))
        {
            if ((buf = FUNC3(dev, 1)) != 0)
            {
                txed = 1;
                FUNC9(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
                FUNC0(dev, wd->tick);
            }
        }

        /* All VTxQs are either empty or exceed their threshold */
        if (txed == 0)
        {
            wd->vtxqPushing = 0;
            return;
        }
    } //while (1)
}