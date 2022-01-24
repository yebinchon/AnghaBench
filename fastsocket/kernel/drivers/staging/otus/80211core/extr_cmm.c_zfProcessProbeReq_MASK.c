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
typedef  int u8_t ;
typedef  int u16_t ;
struct TYPE_5__ {int apBitmap; scalar_t__* hideSsid; int* ssidLen; int** ssid; } ;
struct TYPE_4__ {scalar_t__ adapterState; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ ap; TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_3 ; 
 int ZM_MAX_AP_SUPPORT ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_STA_STATE_DISCONNECT ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SSID ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_PROBERSP ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC6(zdev_t* dev, zbuf_t* buf, u16_t* src)
{
    u16_t offset;
    u8_t len;
    u16_t i, j;
    u8_t ch;
    u16_t sendFlag;

    FUNC4(dev);

    /* check mode : AP/IBSS */
    if ((wd->wlanMode != ZM_MODE_AP) && (wd->wlanMode != ZM_MODE_IBSS))
    {
        FUNC2(ZM_LV_3, "Ignore probe req");
        return;
    }

    if ((wd->wlanMode != ZM_MODE_AP) && (wd->sta.adapterState == ZM_STA_STATE_DISCONNECT))
    {
        FUNC2(ZM_LV_3, "Packets dropped due to disconnect state");
        return;
    }

    if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        FUNC1(dev, ZM_WLAN_FRAME_TYPE_PROBERSP, src, 0, 0, 0);

        return;
    }

    /* check SSID */
    if ((offset = FUNC0(dev, buf, ZM_WLAN_EID_SSID)) == 0xffff)
    {
        FUNC2(ZM_LV_3, "probe req SSID not found");
        return;
    }

    len = FUNC5(dev, buf, offset+1);

    for (i=0; i<ZM_MAX_AP_SUPPORT; i++)
    {
        if ((wd->ap.apBitmap & (1<<i)) != 0)
        {
            FUNC3(ZM_LV_3, "len=", len);
            sendFlag = 0;
            /* boardcast SSID */
            if (len == 0)
            {
                if (wd->ap.hideSsid[i] == 0)
                {
                    sendFlag = 1;
                }
            }
            /* Not broadcast SSID */
            else if (wd->ap.ssidLen[i] == len)
            {
                for (j=0; j<len; j++)
                {
                    if ((ch = FUNC5(dev, buf, offset+2+j))
                            != wd->ap.ssid[i][j])
                    {
                        break;
                    }
                }
                if (j == len)
                {
                    sendFlag = 1;
                }
            }
            if (sendFlag == 1)
            {
                /* Send probe response */
                FUNC1(dev, ZM_WLAN_FRAME_TYPE_PROBERSP, src, i, 0, i);
            }
        }
    }
}