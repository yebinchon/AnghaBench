#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  skb_dma; TYPE_6__* skb; } ;
struct TYPE_14__ {scalar_t__ rx_buf_sz; int /*<<< orphan*/  pcid; int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {void* wReqCount; } ;
struct TYPE_11__ {int /*<<< orphan*/  f1Owner; void* wResCount; } ;
struct TYPE_13__ {int /*<<< orphan*/  buff_addr; TYPE_2__ m_rd1RD1; TYPE_1__ m_rd0RD0; TYPE_5__* pRDInfo; } ;
typedef  TYPE_3__* PSRxDesc ;
typedef  TYPE_4__* PSDevice ;
typedef  TYPE_5__* PDEVICE_RD_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OWNED_BY_NIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 

__attribute__((used)) static BOOL FUNC6(PSDevice pDevice, PSRxDesc pRD) {

    PDEVICE_RD_INFO pRDInfo=pRD->pRDInfo;


    pRDInfo->skb = FUNC3((int)pDevice->rx_buf_sz);
#ifdef	PLICE_DEBUG
	//printk("device_alloc_rx_buf:skb is %x\n",pRDInfo->skb);
#endif
    if (pRDInfo->skb==NULL)
        return FALSE;
    FUNC0(pRDInfo->skb);
    pRDInfo->skb->dev = pDevice->dev;
    pRDInfo->skb_dma = FUNC4(pDevice->pcid, FUNC5(pRDInfo->skb),
				      pDevice->rx_buf_sz, PCI_DMA_FROMDEVICE);
    *((unsigned int *) &(pRD->m_rd0RD0)) = 0; /* FIX cast */

    pRD->m_rd0RD0.wResCount = FUNC1(pDevice->rx_buf_sz);
    pRD->m_rd0RD0.f1Owner = OWNED_BY_NIC;
    pRD->m_rd1RD1.wReqCount = FUNC1(pDevice->rx_buf_sz);
    pRD->buff_addr = FUNC2(pRDInfo->skb_dma);

    return TRUE;
}