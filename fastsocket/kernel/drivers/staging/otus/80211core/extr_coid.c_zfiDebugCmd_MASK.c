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
typedef  scalar_t__ u8_t ;
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_3__ {scalar_t__ keyId; } ;
struct TYPE_4__ {int checksumTest; int enableProtectionMode; int rxPacketDump; TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_1 ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u32_t FUNC8(zdev_t* dev, u32_t cmd, u32_t value)
{
    u16_t event;
    u32_t tick;
    FUNC6(dev);

    FUNC4();


    FUNC5(dev);

    if ( cmd == 0 )
    {   /* schedule timer */
        event = (u16_t) ((value >> 16) & 0xffff);
        tick = value & 0xffff;
        FUNC2(dev, event, tick);
    }
    else if ( cmd == 1 )
    {   /* cancel timer */
        event = (u16_t) (value & 0xffff);
        FUNC0(dev, event);
    }
    else if ( cmd == 2 )
    {   /* clear timer */
        FUNC1(dev);
    }
    else if ( cmd == 3 )
    {   /* test timer */
        FUNC2(dev, 1,  500);
        FUNC2(dev, 2, 1000);
        FUNC2(dev, 3, 1000);
        FUNC2(dev, 4, 1000);
        FUNC2(dev, 5, 1500);
        FUNC2(dev, 6, 2000);
        FUNC2(dev, 7, 2200);
        FUNC2(dev, 6, 2500);
        FUNC2(dev, 8, 2800);
    }
    else if ( cmd == 4)
    {
        FUNC2(dev, 1,  500);
        FUNC2(dev, 2, 1000);
        FUNC2(dev, 3, 1000);
        FUNC2(dev, 4, 1000);
        FUNC2(dev, 5, 1500);
        FUNC2(dev, 6, 2000);
        FUNC2(dev, 7, 2200);
        FUNC2(dev, 6, 2500);
        FUNC2(dev, 8, 2800);
        FUNC0(dev, 1);
        FUNC0(dev, 3);
        FUNC0(dev, 6);
    }
    else if ( cmd == 5 )
    {
        wd->sta.keyId = (u8_t) value;
    }
	else if ( cmd == 6 )
	{
	    /* 0: normal    1: always set TCP/UDP checksum zero */
        wd->checksumTest = value;
	}
	else if ( cmd == 7 )
	{
        wd->enableProtectionMode = value;
   	    FUNC3(ZM_LV_1, "wd->enableProtectionMode=", wd->enableProtectionMode);
	}
	else if ( cmd == 8 )
	{
        /* rx packet content dump */
        if (value)
        {
            wd->rxPacketDump = 1;
        }
        else
        {
            wd->rxPacketDump = 0;
        }
	}


    FUNC7(dev);

    return 0;
}