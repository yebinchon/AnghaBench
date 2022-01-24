#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbdrv_private {int /*<<< orphan*/ * RegInUrb; int /*<<< orphan*/ * RegOutUrb; int /*<<< orphan*/ ** WlanRxDataUrb; int /*<<< orphan*/ ** WlanTxDataUrb; } ;

/* Variables and functions */
 int ZM_MAX_RX_URB_NUM ; 
 int ZM_MAX_TX_URB_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct usbdrv_private *macp)
{
    int i;

    /* Unlink all Tx URBs */
    for (i = 0; i < ZM_MAX_TX_URB_NUM; i++)
    {
        if (macp->WlanTxDataUrb[i] != NULL)
        {
            FUNC0(macp->WlanTxDataUrb[i]);
        }
    }

    /* Unlink all Rx URBs */
    for (i = 0; i < ZM_MAX_RX_URB_NUM; i++)
    {
        if (macp->WlanRxDataUrb[i] != NULL)
        {
            FUNC0(macp->WlanRxDataUrb[i]);
        }
    }

    /* Unlink USB Register Read/Write URB */
    FUNC0(macp->RegOutUrb);

    FUNC0(macp->RegInUrb);
}