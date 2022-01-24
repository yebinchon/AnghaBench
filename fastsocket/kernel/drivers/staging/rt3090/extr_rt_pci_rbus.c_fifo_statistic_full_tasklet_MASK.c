#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fifo_statistic_full_task; } ;
struct TYPE_6__ {int int_pending; int /*<<< orphan*/  irq_lock; scalar_t__ OS_Cookie; } ;
typedef  TYPE_1__* PRTMP_ADAPTER ;
typedef  TYPE_2__* POS_COOKIE ;

/* Variables and functions */
 int FifoStaFullInt ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ; 
 int fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(unsigned long data)
{
	unsigned long flags;
	PRTMP_ADAPTER pAd = (PRTMP_ADAPTER) data;
	POS_COOKIE pObj;

	// Do nothing if the driver is starting halt state.
	// This might happen when timer already been fired before cancel timer with mlmehalt
	if (FUNC3(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS | fRTMP_ADAPTER_NIC_NOT_EXIST))
		return;

    pObj = (POS_COOKIE) pAd->OS_Cookie;

	pAd->int_pending &= ~(FifoStaFullInt);
	FUNC0(pAd);

	FUNC1(&pAd->irq_lock, flags);
	/*
	 * double check to avoid rotting packet
	 */
	if (pAd->int_pending & FifoStaFullInt)
	{
		FUNC5(&pObj->fifo_statistic_full_task);
		FUNC2(&pAd->irq_lock, flags);
		return;
	}

	/* enable RxINT again */

	FUNC4(pAd, FifoStaFullInt);
	FUNC2(&pAd->irq_lock, flags);

}