#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ packet_num; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pMgmt; TYPE_1__ rxManeQueue; } ;
typedef  int /*<<< orphan*/  PSRxMgmtPacket ;
typedef  TYPE_2__* PSDevice ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ mlme_kill ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

INT FUNC5(
     void * Context)
{
	PSDevice	pDevice =  (PSDevice) Context;
	PSRxMgmtPacket			pRxMgmtPacket;
	// int i ;
	//complete(&pDevice->notify);
//printk("Enter MngWorkItem,Queue packet num is %d\n",pDevice->rxManeQueue.packet_num);

	//printk("Enter MlmeThread,packet _num is %d\n",pDevice->rxManeQueue.packet_num);
	//i = 0;
#if 1
	while (1)
	{

	//printk("DDDD\n");
	//down(&pDevice->mlme_semaphore);
        // pRxMgmtPacket =  DeQueue(pDevice);
#if 1
		FUNC2(&pDevice->lock);
		 while(pDevice->rxManeQueue.packet_num != 0)
	 	{
			 pRxMgmtPacket =  FUNC0(pDevice);
        			//pDevice;
        			//DequeueManageObject(pDevice->FirstRecvMngList, pDevice->LastRecvMngList);
			FUNC4(pDevice, pDevice->pMgmt, pRxMgmtPacket);
			//printk("packet_num is %d\n",pDevice->rxManeQueue.packet_num);

		 }
		FUNC3(&pDevice->lock);
		if (mlme_kill == 0)
		break;
		//udelay(200);
#endif
	//printk("Before schedule thread jiffies is %x\n",jiffies);
	FUNC1();
	//printk("after schedule thread jiffies is %x\n",jiffies);
	if (mlme_kill == 0)
		break;
	//printk("i is %d\n",i);
	}

#endif
	return 0;

}