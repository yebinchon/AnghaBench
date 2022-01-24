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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u32_t ;
typedef  scalar_t__ u16_t ;
struct zsHpPriv {int hwFrequency; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;

/* Variables and functions */
 scalar_t__ ZM_BEACON_BUFFER_ADDRESS ; 
 scalar_t__ ZM_MAC_REG_BCN_CTRL ; 
 scalar_t__ ZM_MAC_REG_BCN_LENGTH ; 
 scalar_t__ ZM_MAC_REG_BCN_PLCP ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC5(zdev_t* dev, zbuf_t* buf, u16_t len)
{
    u32_t hw, lw;
    u16_t i;
    FUNC3(dev);

    /* Write to beacon buffer (ZM_BEACON_BUFFER_ADDRESS) */
    for (i = 0; i<len; i+=4)
    {
        lw = FUNC4(dev, buf, i);
        hw = FUNC4(dev, buf, i+2);

        FUNC0(dev, ZM_BEACON_BUFFER_ADDRESS+i, (hw<<16)+lw);
    }

    /* Beacon PCLP header */
    if (((struct zsHpPriv*)wd->hpPrivate)->hwFrequency < 3000)
    {
    FUNC0(dev, ZM_MAC_REG_BCN_PLCP, ((len+4)<<(3+16))+0x0400);
    }
    else
    {
        FUNC0(dev, ZM_MAC_REG_BCN_PLCP, ((len+4)<<(16))+0x001b);
    }

    /* Beacon length (include CRC32) */
    FUNC0(dev, ZM_MAC_REG_BCN_LENGTH, len+4);

    /* Beacon Ready */
    FUNC0(dev, ZM_MAC_REG_BCN_CTRL, 1);
    FUNC1(dev);

    /* Free beacon buf */
    FUNC2(dev, buf, 0);

    return;
}