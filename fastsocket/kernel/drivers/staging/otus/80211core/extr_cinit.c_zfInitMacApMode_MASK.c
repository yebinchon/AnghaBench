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
typedef  int u16_t ;
struct TYPE_3__ {int vapNumber; int apBitmap; } ;
struct TYPE_4__ {int beaconInterval; int* macAddr; int /*<<< orphan*/  gRateBasic; int /*<<< orphan*/  bRateBasic; TYPE_1__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_HAL_80211_MODE_AP ; 
 int ZM_MAX_AP_SUPPORT ; 
 int /*<<< orphan*/  ZM_MODE_AP ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev)
{
    u16_t i;

    FUNC5(dev);

    FUNC0(dev, ZM_MODE_AP, (wd->beaconInterval/wd->ap.vapNumber), 1, 0);

    /* AP mode */
    FUNC1(dev, ZM_HAL_80211_MODE_AP);

    /* VAP test code */
    /* AP + VAP mode */
    if (wd->ap.vapNumber >= 2)
    {
        for (i=1; i<ZM_MAX_AP_SUPPORT; i++)
        {
            if (((wd->ap.apBitmap >> i) & 0x1) != 0)
            {
                u16_t mac[3];
                mac[0] = wd->macAddr[0];
                mac[1] = wd->macAddr[1];
#ifdef ZM_VAPMODE_MULTILE_SSID
                mac[2] = wd->macAddr[2]; //Multiple SSID
#else
                mac[2] = wd->macAddr[2] + (i<<8); //VAP
#endif
                FUNC3(dev, mac, i);

            }
        }
    }

    /* basic rate setting */
    FUNC2(dev, wd->bRateBasic, wd->gRateBasic);

    /* Set TxQs CWMIN, CWMAX, AIFS and TXO to WME AP default. */
    FUNC4(dev, 1);

    return;
}