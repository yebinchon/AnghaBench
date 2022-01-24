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
typedef  int u16_t ;
struct usbdrv_private {int TxUrbHead; int TxUrbCnt; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  TxUrbTail; } ;

/* Variables and functions */
 int ZM_MAX_TX_URB_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t idx;
    unsigned long irqFlag;

    FUNC1(&macp->cs_lock, irqFlag);

    idx = ((macp->TxUrbHead + 1) & (ZM_MAX_TX_URB_NUM - 1));

    //if (idx != macp->TxUrbTail)
    if (macp->TxUrbCnt < ZM_MAX_TX_URB_NUM)
    {
        macp->TxUrbHead = idx;
        macp->TxUrbCnt++;
    }
    else
    {
        FUNC0("UsbTxUrbQ inconsistent: TxUrbHead: %d, TxUrbTail: %d\n",
                macp->TxUrbHead, macp->TxUrbTail);
    }

    FUNC2(&macp->cs_lock, irqFlag);
}