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
struct usbdrv_private {scalar_t__ RxBufCnt; size_t RxBufHead; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  RxBufTail; int /*<<< orphan*/ ** UsbRxBufQ; } ;

/* Variables and functions */
 int ZM_MAX_RX_URB_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

zbuf_t *FUNC3(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;
    //u16_t idx;
    zbuf_t *buf;
    unsigned long irqFlag;

    FUNC1(&macp->cs_lock, irqFlag);

    //idx = ((macp->RxBufHead+1) & (ZM_MAX_RX_URB_NUM - 1));

    //if (idx != macp->RxBufTail)
    if (macp->RxBufCnt != 0)
    {
        buf = macp->UsbRxBufQ[macp->RxBufHead];
        macp->RxBufHead = ((macp->RxBufHead+1) & (ZM_MAX_RX_URB_NUM - 1));
        macp->RxBufCnt--;
    }
    else
    {
        FUNC0("RxBufQ inconsistent: RxBufHead: %d, RxBufTail: %d\n",
                macp->RxBufHead, macp->RxBufTail);
        FUNC2(&macp->cs_lock, irqFlag);
        return NULL;
    }

    FUNC2(&macp->cs_lock, irqFlag);
    return buf;
}