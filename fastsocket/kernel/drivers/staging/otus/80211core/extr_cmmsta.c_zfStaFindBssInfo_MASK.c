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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  scalar_t__ u8_t ;
typedef  int u16_t ;
struct zsWlanProbeRspFrameHeader {scalar_t__* bssid; int* ssid; } ;
struct zsBssInfo {scalar_t__* bssid; int* ssid; int frequency; struct zsBssInfo* next; } ;
struct TYPE_4__ {scalar_t__ bssCount; struct zsBssInfo* head; } ;
struct TYPE_5__ {int currentFrequency; TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_WLAN_EID_DS ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

struct zsBssInfo* FUNC5(zdev_t* dev, zbuf_t* buf, struct zsWlanProbeRspFrameHeader *pProbeRspHeader)
{
    u8_t    i;
    u8_t    j;
    u8_t    k;
    u8_t    isMatched, length, channel;
    u16_t   offset, frequency;
    struct zsBssInfo* pBssInfo;

    FUNC3(dev);

    if ((pBssInfo = wd->sta.bssList.head) == NULL)
    {
        return NULL;
    }

    for( i=0; i<wd->sta.bssList.bssCount; i++ )
    {
        //zm_debug_msg2("check pBssInfo = ", pBssInfo);

        /* Check BSSID */
        for( j=0; j<6; j++ )
        {
            if ( pBssInfo->bssid[j] != pProbeRspHeader->bssid[j] )
            {
                break;
            }
        }

		/* Check SSID */
        if (j == 6)
        {
            if (pProbeRspHeader->ssid[1] <= 32)
            {
                /* compare length and ssid */
                isMatched = 1;
				if((pProbeRspHeader->ssid[1] != 0) && (pBssInfo->ssid[1] != 0))
				{
                for( k=1; k<pProbeRspHeader->ssid[1] + 1; k++ )
                {
                    if ( pBssInfo->ssid[k] != pProbeRspHeader->ssid[k] )
                    {
                        isMatched = 0;
                        break;
                    }
                }
            }
            }
            else
            {
                isMatched = 0;
            }
        }
        else
        {
            isMatched = 0;
        }

        /* Check channel */
        /* Add check channel to solve the bug #31222 */
        if (isMatched) {
            if ((offset = FUNC1(dev, buf, ZM_WLAN_EID_DS)) != 0xffff) {
                if ((length = FUNC4(dev, buf, offset+1)) == 1) {
                    channel = FUNC4(dev, buf, offset+2);
                    if (FUNC2(dev, FUNC0(dev, channel, 0)) == 0) {
                        frequency = 0;
                    } else {
                        frequency = FUNC0(dev, channel, 0);;
                    }
                } else {
                    frequency = 0;
                }
            } else {
                frequency = wd->sta.currentFrequency;
            }

            if (frequency != 0) {
                if ( ((frequency > 3000) && (pBssInfo->frequency > 3000))
                     || ((frequency < 3000) && (pBssInfo->frequency < 3000)) ) {
                    /* redundant */
                    break;
                }
            }
        }

        pBssInfo = pBssInfo->next;
    }

    if ( i == wd->sta.bssList.bssCount )
    {
        pBssInfo = NULL;
    }

    return pBssInfo;
}