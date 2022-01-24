#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef  TYPE_1__ zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u32_t ;
typedef  int u16_t ;
struct usbdrv_private {int RxBufTail; int RxBufCnt; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  RxBufHead; int /*<<< orphan*/ ** UsbRxBufQ; } ;

/* Variables and functions */
 int ZM_MAX_RX_URB_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u32_t FUNC3(zdev_t *dev, zbuf_t *buf)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t idx;
    unsigned long irqFlag;

    FUNC1(&macp->cs_lock, irqFlag);

    idx = ((macp->RxBufTail+1) & (ZM_MAX_RX_URB_NUM - 1));

    //if (idx != macp->RxBufHead)
    if (macp->RxBufCnt != ZM_MAX_RX_URB_NUM)
    {
        macp->UsbRxBufQ[macp->RxBufTail] = buf;
        macp->RxBufTail = idx;
        macp->RxBufCnt++;
    }
    else
    {
        FUNC0("RxBufQ inconsistent: RxBufHead: %d, RxBufTail: %d\n",
                macp->RxBufHead, macp->RxBufTail);
        FUNC2(&macp->cs_lock, irqFlag);
        return 0xffff;
    }

    FUNC2(&macp->cs_lock, irqFlag);
    return 0;
}