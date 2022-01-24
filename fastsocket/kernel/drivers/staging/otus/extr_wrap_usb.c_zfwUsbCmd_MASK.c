#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct usbdrv_private* ml_priv; } ;
typedef  TYPE_1__ zdev_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct usbdrv_private {int /*<<< orphan*/  RegOutUrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 

void FUNC3(zdev_t* dev, u8_t endpt, u32_t* cmd, u16_t cmdLen)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u32_t ret;

    //MPUsbCommand(dev, endpt, cmd, cmdLen);
    ret = FUNC2(dev, cmd, cmdLen);

    /* if zfLnxUsbWriteReg() return error, free and allocate urb, resend again */
    if (ret != 0)
    {
        FUNC1(macp->RegOutUrb);
        macp->RegOutUrb = FUNC0(0, GFP_ATOMIC);
        ret = FUNC2(dev, cmd, cmdLen);
    }
}