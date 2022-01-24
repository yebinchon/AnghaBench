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
typedef  int u8_t ;
typedef  scalar_t__ u16_t ;
struct TYPE_9__ {scalar_t__ bIbssGMode; } ;
struct TYPE_8__ {int currentFrequency; } ;
struct TYPE_7__ {TYPE_1__* probingSsidList; } ;
struct TYPE_10__ {int supportMode; scalar_t__ wlanMode; TYPE_4__ wfc; TYPE_3__ sta; TYPE_2__ ws; } ;
struct TYPE_6__ {scalar_t__ ssidLen; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_IBSS ; 
 int /*<<< orphan*/  ZM_RATE_SET_CCK ; 
 int /*<<< orphan*/  ZM_RATE_SET_OFDM ; 
 int ZM_WIRELESS_MODE_24_54 ; 
 int ZM_WIRELESS_MODE_24_N ; 
 int /*<<< orphan*/  ZM_WLAN_EID_EXTENDED_RATE ; 
 scalar_t__ ZM_WLAN_EID_SSID ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SUPPORT_RATE ; 
 TYPE_5__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

u16_t FUNC7(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t bWithSSID)
{
    FUNC4(dev);
    FUNC2();


    /* SSID */
    if (bWithSSID == 0)  /* broadcast ssid */
    {
        //zmw_leave_critical_section(dev);
        FUNC6(dev, buf, offset++, ZM_WLAN_EID_SSID);
        FUNC6(dev, buf, offset++, 0);   /* length = 0 */
    }
    else
    {
        FUNC3(dev);
        if (wd->ws.probingSsidList[bWithSSID-1].ssidLen == 0)
        {
            FUNC6(dev, buf, offset++, ZM_WLAN_EID_SSID);
            FUNC6(dev, buf, offset++, 0);   /* length = 0 */
        }
        else
        {
            FUNC6(dev, buf, offset++, ZM_WLAN_EID_SSID);
            FUNC6(dev, buf, offset++,
                    wd->ws.probingSsidList[bWithSSID-1].ssidLen);
            FUNC0(dev, buf,
                    wd->ws.probingSsidList[bWithSSID-1].ssid,
                    offset,
                    wd->ws.probingSsidList[bWithSSID-1].ssidLen); /* ssid */
            offset += wd->ws.probingSsidList[bWithSSID-1].ssidLen;
        }
        FUNC5(dev);
    }

    /* Supported rates */
    if ( wd->sta.currentFrequency < 3000 )
    {   /* 802.11b+g */
        offset = FUNC1(dev, buf, offset,
                                      ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_CCK);

        if (wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) {
            if (wd->wlanMode == ZM_MODE_IBSS) {
                if (wd->wfc.bIbssGMode) {
                    offset = FUNC1(dev, buf, offset,
                                      ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
                }
            } else {
                offset = FUNC1(dev, buf, offset,
                                      ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
            }
        }
    }
    else
    {  /* 802.11a */
        offset = FUNC1(dev, buf, offset,
                                      ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_OFDM);
    }

    return offset;
}