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
typedef  int u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsHpPriv {int dot11Mode; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
#define  ZM_HAL_80211_MODE_AP 131 
#define  ZM_HAL_80211_MODE_IBSS_GENERAL 130 
#define  ZM_HAL_80211_MODE_IBSS_WPA2PSK 129 
#define  ZM_HAL_80211_MODE_STA 128 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u16_t FUNC3(zdev_t* dev, u8_t mode)
{
    struct zsHpPriv* hpPriv;

    FUNC2(dev);
    hpPriv = wd->hpPrivate;
    hpPriv->dot11Mode = mode;

    switch(mode)
    {
        case ZM_HAL_80211_MODE_AP:
            FUNC0(dev, 0x1c3700, 0x0f0000a1);
            FUNC0(dev, 0x1c3c40, 0x1);
            break;

        case ZM_HAL_80211_MODE_STA:
            FUNC0(dev, 0x1c3700, 0x0f000002);
            FUNC0(dev, 0x1c3c40, 0x1);
            break;

        case ZM_HAL_80211_MODE_IBSS_GENERAL:
            FUNC0(dev, 0x1c3700, 0x0f000000);
            FUNC0(dev, 0x1c3c40, 0x1);
            break;

        case ZM_HAL_80211_MODE_IBSS_WPA2PSK:
            FUNC0(dev, 0x1c3700, 0x0f0000e0);
            FUNC0(dev, 0x1c3c40, 0x41);       // for multiple ( > 2 ) stations IBSS network
            break;

        default:
            goto skip;
    }

    FUNC1(dev);

skip:
    return 0;
}