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
struct nfulnl_instance {int qlen; int /*<<< orphan*/ * skb; int /*<<< orphan*/  peer_pid; } ;
struct nfgenmsg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  NLMSG_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct nfulnl_instance *inst)
{
	int status = -1;

	if (inst->qlen > 1)
		FUNC0(inst->skb, 0, 0,
			  NLMSG_DONE,
			  sizeof(struct nfgenmsg));

	status = FUNC1(inst->skb, inst->peer_pid, MSG_DONTWAIT);

	inst->qlen = 0;
	inst->skb = NULL;

nlmsg_failure:
	return status;
}