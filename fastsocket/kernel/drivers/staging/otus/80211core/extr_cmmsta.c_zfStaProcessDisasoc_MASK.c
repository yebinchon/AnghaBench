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
typedef  scalar_t__ u16_t ;
struct TYPE_3__ {scalar_t__* bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_DISCONNECT_DISASOC ; 
 scalar_t__ ZM_WLAN_HEADER_A3_OFFSET ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC5(zdev_t* dev, zbuf_t* buf)
{
    u16_t apMacAddr[3];

    FUNC3(dev);

    /* STA : if SA=connected AP then disconnect with AP */
    if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        apMacAddr[0] = FUNC4(dev, buf, ZM_WLAN_HEADER_A3_OFFSET);
        apMacAddr[1] = FUNC4(dev, buf, ZM_WLAN_HEADER_A3_OFFSET+2);
        apMacAddr[2] = FUNC4(dev, buf, ZM_WLAN_HEADER_A3_OFFSET+4);

        if ((apMacAddr[0] == wd->sta.bssid[0]) && (apMacAddr[1] == wd->sta.bssid[1]) && (apMacAddr[2] == wd->sta.bssid[2]))
        {
            if (FUNC2(dev, buf) >= 24+2) //not a malformed frame
            {
                if ( FUNC1(dev) )
                {
                    FUNC0(dev, ZM_STATUS_MEDIA_DISCONNECT_DISASOC, wd->sta.bssid, 2);
                }
                else
                {
                    FUNC0(dev, ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED, wd->sta.bssid, 3);
                }
            }
        }
    }
}