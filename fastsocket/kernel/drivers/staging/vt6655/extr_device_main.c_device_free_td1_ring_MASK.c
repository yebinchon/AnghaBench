#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  len; } ;
struct TYPE_10__ {scalar_t__ skb_dma; scalar_t__ buf_dma; TYPE_6__* skb; } ;
struct TYPE_7__ {int* nTxDescs; } ;
struct TYPE_9__ {int /*<<< orphan*/  pcid; TYPE_2__* apTD1Rings; TYPE_1__ sOpts; } ;
struct TYPE_8__ {TYPE_4__* pTDInfo; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PSTxDesc ;
typedef  TYPE_3__* PSDevice ;
typedef  TYPE_4__* PDEVICE_TD_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(PSDevice pDevice) {
    int i;

    for (i = 0; i < pDevice->sOpts.nTxDescs[1]; i++) {
        PSTxDesc        pDesc=&(pDevice->apTD1Rings[i]);
        PDEVICE_TD_INFO  pTDInfo=pDesc->pTDInfo;

        if (pTDInfo->skb_dma && (pTDInfo->skb_dma != pTDInfo->buf_dma))
            FUNC2(pDevice->pcid, pTDInfo->skb_dma,
               pTDInfo->skb->len, PCI_DMA_TODEVICE);

        if (pTDInfo->skb)
            FUNC0(pTDInfo->skb);

        FUNC1((PVOID)pDesc->pTDInfo);
    }

}