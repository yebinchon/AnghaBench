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
struct TYPE_5__ {scalar_t__ ssidLen; scalar_t__* ssid; scalar_t__ bChannelScan; } ;
struct TYPE_4__ {scalar_t__ ssidLen; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ ws; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(zdev_t* dev)
{
    FUNC8(dev);
    FUNC6();

    if ( wd->wlanMode != ZM_MODE_INFRASTRUCTURE &&
         wd->wlanMode != ZM_MODE_IBSS )
    {
        return;
    }

    if ( (FUNC2(dev))||(FUNC3(dev)) )
    {
        return;
    }

    if ( wd->sta.bChannelScan )
    {
        return;
    }

    /* Recover zero SSID length  */
    if ( (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) && (wd->ws.ssidLen == 0))
    {
        FUNC5("zfStaReconnect: NOT Support!! Set SSID to any BSS");
        /* ANY BSS */
        FUNC7(dev);
        wd->sta.ssid[0] = 0;
        wd->sta.ssidLen = 0;
        FUNC9(dev);
    }

    // RAY: To ensure no TX pending before re-connecting
    FUNC0(dev);
    FUNC4(dev);
    FUNC1(dev);
}