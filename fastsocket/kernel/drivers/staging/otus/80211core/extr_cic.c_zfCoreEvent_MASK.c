#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  size_t u8_t ;
typedef  int u32_t ;
typedef  size_t u16_t ;
typedef  int /*<<< orphan*/  s8_t ;
typedef  int /*<<< orphan*/  rsp ;
struct TYPE_7__ {scalar_t__ powerSaveMode; size_t staPSDataCount; int ibssAtimTimer; int atimWindow; TYPE_1__* oppositeInfo; int /*<<< orphan*/ ** staPSDataQueue; } ;
struct TYPE_9__ {size_t* bcmcTail; size_t* bcmcHead; TYPE_3__* staTable; int /*<<< orphan*/ *** bcmcArray; } ;
struct TYPE_10__ {scalar_t__ wlanMode; scalar_t__ CurrentDtimCount; TYPE_2__ sta; TYPE_4__ ap; } ;
struct TYPE_8__ {int /*<<< orphan*/  rcCell; } ;
struct TYPE_6__ {int /*<<< orphan*/  rcCell; } ;

/* Variables and functions */
 int ZM_BCMC_ARRAY_SIZE ; 
 int ZM_BIT_15 ; 
 int /*<<< orphan*/  ZM_EXTERNAL_ALLOC_BUF ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_STA_PS_NONE ; 
 TYPE_5__* wd ; 
 size_t FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(zdev_t* dev, u16_t event, u8_t* rsp)
{
    u16_t i;
    zbuf_t* psBuf;
    u8_t moreData;
    u8_t vap = 0;
    u8_t peerIdx;
    s8_t res;
    FUNC12(dev);
    FUNC10();


    if (event == 0) //Beacon Event
    {
        if ( wd->wlanMode == ZM_MODE_AP )
        {
            FUNC1(dev);

            if (wd->CurrentDtimCount == 0)
            {
                /* TODO : Send queued broadcast frames at BC/MC event */
                do
                {
                    psBuf = NULL;
                    moreData = 0;
                    FUNC11(dev);
                    if (wd->ap.bcmcTail[vap] != wd->ap.bcmcHead[vap])
                    {
                        //zm_msg0_mm(ZM_LV_0, "Send BCMC frames");
                        psBuf = wd->ap.bcmcArray[vap][wd->ap.bcmcHead[vap]];
                        wd->ap.bcmcHead[vap] = (wd->ap.bcmcHead[vap] + 1)
                                & (ZM_BCMC_ARRAY_SIZE - 1);
                        if (wd->ap.bcmcTail[vap] != wd->ap.bcmcHead[vap])
                        {
                            moreData = 0x20;
                        }
                    }
                    FUNC13(dev);
                    if (psBuf != NULL)
                    {
                        /* TODO : config moreData bit */
                        FUNC9(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF,
                                moreData);
                    }
                } while(psBuf != NULL);

            }
        }
        else
        {
            /* STA mode */
            if ( wd->sta.powerSaveMode > ZM_STA_PS_NONE )
            {
                /* send queued packets */
                for(i=0; i<wd->sta.staPSDataCount; i++)
                {
                    FUNC9(dev, wd->sta.staPSDataQueue[i], 0,
                                ZM_EXTERNAL_ALLOC_BUF, 0);
                }

                wd->sta.staPSDataCount = 0;
            }

            if ( wd->wlanMode == ZM_MODE_IBSS )
            {
                FUNC8(dev);
                wd->sta.ibssAtimTimer = ZM_BIT_15 | wd->sta.atimWindow;
            }

            FUNC4(dev);
        }
    } //if (event == 0) //Beacon Event
    else if (event == 1) //Retry completed event
    {
        u32_t retryRate;

        retryRate = (u32_t)(rsp[6]) + (((u32_t)(rsp[7]))<<8)
                + (((u32_t)(rsp[8]))<<16) + (((u32_t)(rsp[9]))<<24);
        /* Degrade Tx Rate */
        if (wd->wlanMode == ZM_MODE_AP)
        {
            FUNC11(dev);
            if ((i=FUNC0(dev, (u16_t*)rsp)) != 0xffff)
            {
                FUNC5(dev, &wd->ap.staTable[i].rcCell, 0,(u32_t)FUNC3(retryRate));
            }
            FUNC13(dev);
        }
        else
        {
            FUNC11(dev);
            res = FUNC7(dev, (u16_t*)rsp, &peerIdx);
            if ( res == 0 )
            {
                FUNC5(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, 0,(u32_t)FUNC3(retryRate));
            }
            FUNC13(dev);
        }
    } //else if (event == 1) //Retry completed event
    else if (event == 2) //Tx Fail event
    {
        u32_t retryRate;

        retryRate = (u32_t)(rsp[6]) + (((u32_t)(rsp[7]))<<8)
                + (((u32_t)(rsp[8]))<<16) + (((u32_t)(rsp[9]))<<24);

        /* Degrade Tx Rate */
        if (wd->wlanMode == ZM_MODE_AP)
        {
            FUNC11(dev);
            if ((i=FUNC0(dev, (u16_t*)rsp)) != 0xffff)
            {
                FUNC5(dev, &wd->ap.staTable[i].rcCell, 0,(u32_t)FUNC3(retryRate));
            }
            FUNC13(dev);

            FUNC2(dev, rsp);
        }
        else
        {
            FUNC11(dev);
            res = FUNC7(dev, (u16_t*)rsp, &peerIdx);
            if ( res == 0 )
            {
                FUNC5(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, 0,(u32_t)FUNC3(retryRate));
            }
            FUNC13(dev);
        }
    } //else if (event == 2) //Tx Fail event
    else if (event == 3) //Tx Comp event
    {
        u32_t retryRate;

        retryRate = (u32_t)(rsp[6]) + (((u32_t)(rsp[7]))<<8)
                + (((u32_t)(rsp[8]))<<16) + (((u32_t)(rsp[9]))<<24);

        /* TODO : Tx completed, used for rate control probing */
        if (wd->wlanMode == ZM_MODE_AP)
        {
            FUNC11(dev);
            if ((i=FUNC0(dev, (u16_t*)rsp)) != 0xffff)
            {
                FUNC6(dev, &wd->ap.staTable[i].rcCell, FUNC3(retryRate));
            }
            FUNC13(dev);
        }
        else
        {
            FUNC11(dev);
            res = FUNC7(dev, (u16_t*)rsp, &peerIdx);
            if ( res == 0 )
            {
                FUNC6(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, FUNC3(retryRate));
            }
            FUNC13(dev);
        }
    } //else if (event == 3) //Tx Comp event
    else if (event == 4) //BA failed count
    {
        u32_t fail;
        u32_t rate;
        peerIdx = 0;

        fail=((u32_t*)rsp)[0] & 0xFFFF;
        rate=((u32_t*)rsp)[0] >> 16;

        if (rate > 15) {
            rate = (rate & 0xF) + 12 + 2;
        }
        else {
            rate = rate + 12;
        }

        FUNC11(dev);
        FUNC5(dev, &wd->sta.oppositeInfo[peerIdx].rcCell, (u8_t)rate, fail);
        FUNC13(dev);
    }
}