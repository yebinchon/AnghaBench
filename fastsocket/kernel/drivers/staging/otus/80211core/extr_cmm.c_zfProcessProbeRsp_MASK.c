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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsWlanProbeRspFrameHeader {int dummy; } ;
struct zsBssInfo {scalar_t__ macaddr; } ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_IBSS ; 
 TYPE_1__* wd ; 
 struct zsBssInfo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct zsBssInfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct zsBssInfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct zsBssInfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct zsBssInfo* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsWlanProbeRspFrameHeader*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsWlanProbeRspFrameHeader*,struct zsBssInfo*,struct zsAdditionInfo*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo)
{
    /* Gather scan result */
    /* Parse TIM and send PS-POLL in power saving mode */
    struct zsWlanProbeRspFrameHeader*  pProbeRspHeader;
    struct zsBssInfo* pBssInfo;
    u8_t   pBuf[sizeof(struct zsWlanProbeRspFrameHeader)];
    int    res;

    FUNC10(dev);

    FUNC8();

    FUNC4(dev, buf, pBuf, 0,
                       sizeof(struct zsWlanProbeRspFrameHeader));
    pProbeRspHeader = (struct zsWlanProbeRspFrameHeader*) pBuf;

    FUNC9(dev);

    //zm_debug_msg1("bss count = ", wd->sta.bssList.bssCount);

    pBssInfo = FUNC5(dev, buf, pProbeRspHeader);

    //if ( i == wd->sta.bssList.bssCount )
    if ( pBssInfo == NULL )
    {
        /* Allocate a new entry if BSS not in the scan list */
        pBssInfo = FUNC0(dev);
        if (pBssInfo != NULL)
        {
            res = FUNC7(dev, buf, pProbeRspHeader, pBssInfo, AddInfo, 0);
            //zfDumpSSID(pBssInfo->ssid[1], &(pBssInfo->ssid[2]));
            if ( res != 0 )
            {
                FUNC1(dev, pBssInfo);
            }
            else
            {
                FUNC2(dev, pBssInfo);
            }
        }
    }
    else
    {
        res = FUNC7(dev, buf, pProbeRspHeader, pBssInfo, AddInfo, 1);
        if (res == 2)
        {
            FUNC3(dev, pBssInfo);
            FUNC1(dev, pBssInfo);
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {
            int idx;

            // It would reset the alive counter if the peer station is found!
            FUNC6(dev, (u16_t *)pBssInfo->macaddr, &idx);
        }
    }

    FUNC11(dev);

    return;
}