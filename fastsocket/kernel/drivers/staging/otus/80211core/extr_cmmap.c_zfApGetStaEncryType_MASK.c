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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int /*<<< orphan*/  encryMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_3 ; 
 int /*<<< orphan*/  ZM_NO_WEP ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev, u16_t* addr, u8_t* encryType)
{
    //struct zsWlanDev* wd = (struct zsWlanDev*) zmw_wlan_dev(dev);
    u16_t id;

    FUNC4(dev);

    FUNC2();

    FUNC3(dev);

    if ((id = FUNC0(dev, addr)) != 0xffff)
    {
        *encryType = wd->ap.staTable[id].encryMode;
    }
    else
    {
        *encryType = ZM_NO_WEP;
    }

    FUNC5(dev);

    FUNC1(ZM_LV_3, "encyrType=", *encryType);
    return;
}