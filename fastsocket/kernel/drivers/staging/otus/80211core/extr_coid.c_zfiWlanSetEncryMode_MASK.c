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
typedef  void* u8_t ;
struct TYPE_3__ {scalar_t__ encryMode; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ ws; } ;

/* Variables and functions */
 scalar_t__ ZM_AES ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_TKIP ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev, u8_t encryMode)
{
    FUNC2(dev);

    FUNC0();

    FUNC1(dev);
    if (wd->wlanMode == ZM_MODE_AP)
    {
        /* Hostapd Issue */
        if ((wd->ws.encryMode != ZM_AES) && (wd->ws.encryMode != ZM_TKIP))
            wd->ws.encryMode = encryMode;
    }
    else
        wd->ws.encryMode = encryMode;
    FUNC3(dev);
}