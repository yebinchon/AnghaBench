#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct vport {int /*<<< orphan*/  upcall_pid; int /*<<< orphan*/  port_no; struct datapath* dp; } ;
struct sw_flow_key {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dp_upcall_info {int /*<<< orphan*/  pid; int /*<<< orphan*/ * userdata; struct sw_flow_key* key; int /*<<< orphan*/  cmd; } ;
struct dp_stats_percpu {int /*<<< orphan*/  sync; int /*<<< orphan*/  n_hit; int /*<<< orphan*/  n_missed; } ;
struct datapath {int /*<<< orphan*/  table; int /*<<< orphan*/  stats_percpu; } ;
struct TYPE_2__ {struct sw_flow* flow; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_PACKET_CMD_MISS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct datapath*,struct sk_buff*,struct dp_upcall_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct datapath*,struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,struct sw_flow_key*,int*) ; 
 struct sw_flow* FUNC6 (int /*<<< orphan*/ ,struct sw_flow_key*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sw_flow*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct dp_stats_percpu* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

void FUNC13(struct vport *p, struct sk_buff *skb)
{
	struct datapath *dp = p->dp;
	struct sw_flow *flow;
	struct dp_stats_percpu *stats;
	struct sw_flow_key key;
	u64 *stats_counter;
	int error;
	int key_len;

	stats = FUNC9(dp->stats_percpu);

	/* Extract flow from 'skb' into 'key'. */
	error = FUNC5(skb, p->port_no, &key, &key_len);
	if (FUNC12(error)) {
		FUNC2(skb);
		return;
	}

	/* Look up flow. */
	flow = FUNC6(FUNC8(dp->table), &key, key_len);
	if (FUNC12(!flow)) {
		struct dp_upcall_info upcall;

		upcall.cmd = OVS_PACKET_CMD_MISS;
		upcall.key = &key;
		upcall.userdata = NULL;
		upcall.pid = p->upcall_pid;
		FUNC3(dp, skb, &upcall);
		FUNC1(skb);
		stats_counter = &stats->n_missed;
		goto out;
	}

	FUNC0(skb)->flow = flow;

	stats_counter = &stats->n_hit;
	FUNC7(FUNC0(skb)->flow, skb);
	FUNC4(dp, skb);

out:
	/* Update datapath statistics. */
	FUNC10(&stats->sync);
	(*stats_counter)++;
	FUNC11(&stats->sync);
}