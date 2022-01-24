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
struct net_device_stats {int dummy; } ;
struct adapter {scalar_t__ rcv_unicasts; scalar_t__ rcv_multicasts; scalar_t__ rcv_broadcasts; scalar_t__ xmit_completes; scalar_t__ num_isrs; scalar_t__ upr_interrupts; scalar_t__ linkevent_interrupts; scalar_t__ xmit_interrupts; scalar_t__ rcv_interrupts; scalar_t__ error_interrupts; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapter)
{
	FUNC1(adapter);
	FUNC0(&adapter->stats, 0, sizeof(struct net_device_stats));
	adapter->error_interrupts = 0;
	adapter->rcv_interrupts = 0;
	adapter->xmit_interrupts = 0;
	adapter->linkevent_interrupts = 0;
	adapter->upr_interrupts = 0;
	adapter->num_isrs = 0;
	adapter->xmit_completes = 0;
	adapter->rcv_broadcasts = 0;
	adapter->rcv_multicasts = 0;
	adapter->rcv_unicasts = 0;
}