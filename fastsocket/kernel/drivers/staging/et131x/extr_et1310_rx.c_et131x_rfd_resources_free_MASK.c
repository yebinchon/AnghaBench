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
struct TYPE_5__ {int /*<<< orphan*/  RecvLookaside; } ;
struct et131x_adapter {TYPE_1__ RxRing; } ;
struct TYPE_6__ {int /*<<< orphan*/ * Packet; } ;
typedef  TYPE_2__ MP_RFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC1(struct et131x_adapter *adapter, MP_RFD *pMpRfd)
{
	pMpRfd->Packet = NULL;
	FUNC0(adapter->RxRing.RecvLookaside, pMpRfd);
}