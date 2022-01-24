#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int Ac1DmaDone; } ;
struct TYPE_12__ {TYPE_1__ field; scalar_t__ word; } ;
struct TYPE_11__ {int /*<<< orphan*/  ac1_dma_done_task; } ;
struct TYPE_10__ {int int_pending; int /*<<< orphan*/  irq_lock; scalar_t__ OS_Cookie; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;
typedef  TYPE_3__* POS_COOKIE ;
typedef  TYPE_4__ INT_SOURCE_CSR_STRUC ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int INT_AC1_DLY ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ; 
 int fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	unsigned long flags;
	PRTMP_ADAPTER pAd = (PRTMP_ADAPTER) data;
    INT_SOURCE_CSR_STRUC	IntSource;
	POS_COOKIE pObj;
	BOOLEAN bReschedule = 0;

	// Do nothing if the driver is starting halt state.
	// This might happen when timer already been fired before cancel timer with mlmehalt
	if (FUNC3(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS | fRTMP_ADAPTER_NIC_NOT_EXIST))
		return;

    pObj = (POS_COOKIE) pAd->OS_Cookie;

//	printk("ac0_dma_done_process\n");
	IntSource.word = 0;
	IntSource.field.Ac1DmaDone = 1;
	pAd->int_pending &= ~INT_AC1_DLY;

	bReschedule = FUNC0(pAd, IntSource);

	FUNC1(&pAd->irq_lock, flags);
	/*
	 * double check to avoid lose of interrupts
	 */
	if ((pAd->int_pending & INT_AC1_DLY) || bReschedule)
	{
		FUNC5(&pObj->ac1_dma_done_task);
		FUNC2(&pAd->irq_lock, flags);
		return;
	}

	/* enable TxDataInt again */
	FUNC4(pAd, INT_AC1_DLY);
	FUNC2(&pAd->irq_lock, flags);
}