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
struct net_device {int /*<<< orphan*/  napi_list; int /*<<< orphan*/  name; } ;
struct napi_struct {int (* poll ) (struct napi_struct*,int) ;int weight; int poll_owner; int /*<<< orphan*/  state; int /*<<< orphan*/  poll_lock; struct net_device* dev; int /*<<< orphan*/  dev_list; int /*<<< orphan*/ * skb; int /*<<< orphan*/ * gro_list; scalar_t__ gro_count; int /*<<< orphan*/  poll_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  NAPI_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *dev, struct napi_struct *napi,
		    int (*poll)(struct napi_struct *, int), int weight)
{
	FUNC0(&napi->poll_list);
	napi->gro_count = 0;
	napi->gro_list = NULL;
	napi->skb = NULL;
	napi->poll = poll;
#if 0 /* Do not complain until all drivers shipped in RHEL are fixed. */
	if (weight > NAPI_POLL_WEIGHT)
		pr_err_once("netif_napi_add() called with weight %d on device %s\n",
			    weight, dev->name);
#endif
	napi->weight = weight;
	FUNC1(&napi->dev_list, &dev->napi_list);
	napi->dev = dev;
#ifdef CONFIG_NETPOLL
	spin_lock_init(&napi->poll_lock);
	napi->poll_owner = -1;
#endif
	FUNC3(NAPI_STATE_SCHED, &napi->state);
}