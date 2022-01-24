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
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_4__ {TYPE_2__* staTable; } ;
struct TYPE_6__ {TYPE_1__ ap; } ;
struct TYPE_5__ {int iv16; int iv32; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_3 ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev, u16_t* addr, u16_t* iv16, u32_t* iv32)
{
    //struct zsWlanDev* wd = (struct zsWlanDev*) zmw_wlan_dev(dev);
    u16_t id;

    FUNC4(dev);

    FUNC2();

    FUNC3(dev);

    if ((id = FUNC0(dev, addr)) != 0xffff)
    {
        *iv16 = wd->ap.staTable[id].iv16;
        *iv32 = wd->ap.staTable[id].iv32;
    }
    else
    {
        *iv16 = 0;
        *iv32 = 0;
    }

    FUNC5(dev);

    FUNC1(ZM_LV_3, "iv16=", *iv16);
    FUNC1(ZM_LV_3, "iv32=", *iv32);
    return;
}