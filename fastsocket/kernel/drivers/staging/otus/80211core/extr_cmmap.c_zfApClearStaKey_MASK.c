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
typedef  int /*<<< orphan*/  bcAddr ;
struct TYPE_4__ {TYPE_2__* staTable; } ;
struct TYPE_6__ {TYPE_1__ ap; } ;
struct TYPE_5__ {int /*<<< orphan*/  encryMode; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  ZM_LV_3 ; 
 int /*<<< orphan*/  ZM_NO_WEP ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(zdev_t* dev, u16_t* addr)
{
    //struct zsWlanDev* wd = (struct zsWlanDev*) zmw_wlan_dev(dev);
    u16_t bcAddr[3] = { 0xffff, 0xffff, 0xffff };
    u16_t id;

    FUNC6(dev);

    if (FUNC2((u8_t*)bcAddr, (u8_t*)addr, sizeof(bcAddr)) == TRUE)
    {
        /* Turn off group key information */
    //    zfClearKey(dev, 0);
    }
    else
    {
        FUNC4();

        FUNC5(dev);

        if ((id = FUNC0(dev, addr)) != 0xffff)
        {
            /* Turn off STA's key information */
            FUNC1(dev, id+1);

            /* Update STA's Encryption Type */
            wd->ap.staTable[id].encryMode = ZM_NO_WEP;
        }
        else
        {
            FUNC3(ZM_LV_3, "Can't find STA address\n");
        }
        FUNC7(dev);
    }
}