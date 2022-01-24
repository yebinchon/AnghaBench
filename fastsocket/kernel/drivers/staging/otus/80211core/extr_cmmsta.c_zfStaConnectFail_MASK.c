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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_3__ {scalar_t__ bAutoReconnect; } ;
struct TYPE_4__ {TYPE_1__ sta; int /*<<< orphan*/  (* zfcbConnectNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_INTERNAL ; 
 int /*<<< orphan*/  ZM_STA_STATE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev, u16_t reason, u16_t* bssid, u8_t weight)
{
    FUNC6(dev);

    /* Change internal state */
    FUNC1(dev, ZM_STA_STATE_DISCONNECT);

    /* Improve WEP/TKIP performace with HT AP, detail information please look bug#32495 */
    //zfHpSetTTSIFSTime(dev, 0x8);

    /* Notify wrapper of connection status changes */
    if (wd->zfcbConnectNotify != NULL)
    {
        wd->zfcbConnectNotify(dev, reason, bssid);
    }

    /* Put AP into internal blocking list */
    FUNC4(dev, (u8_t *)bssid, weight);

    /* Issue another SCAN */
    if ( wd->sta.bAutoReconnect )
    {
        FUNC5("Start internal scan...");
        FUNC3(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
        FUNC2(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
    }
}