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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sw_flow_actions {int /*<<< orphan*/  actions_len; int /*<<< orphan*/  actions; } ;
struct sw_flow {unsigned long used; int /*<<< orphan*/  lock; scalar_t__ tcp_flags; int /*<<< orphan*/  byte_count; scalar_t__ packet_count; int /*<<< orphan*/  key; int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int len; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct ovs_flow_stats {scalar_t__ n_packets; int /*<<< orphan*/  n_bytes; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_ACTIONS ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_KEY ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_STATS ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_TCP_FLAGS ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_USED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  dp_flow_genl_family ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ovs_header*) ; 
 int FUNC2 (struct sk_buff*,struct ovs_header*) ; 
 struct ovs_header* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ovs_flow_stats*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 struct sw_flow_actions* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct sw_flow *flow, struct datapath *dp,
				  struct sk_buff *skb, u32 pid,
				  u32 seq, u32 flags, u8 cmd)
{
	const int skb_orig_len = skb->len;
	const struct sw_flow_actions *sf_acts;
	struct nlattr *start;
	struct ovs_flow_stats stats;
	struct ovs_header *ovs_header;
	struct nlattr *nla;
	unsigned long used;
	u8 tcp_flags;
	int err;

	sf_acts = FUNC13(flow->sf_acts);

	ovs_header = FUNC3(skb, pid, seq, &dp_flow_genl_family, flags, cmd);
	if (!ovs_header)
		return -EMSGSIZE;

	ovs_header->dp_ifindex = FUNC4(dp);

	nla = FUNC7(skb, OVS_FLOW_ATTR_KEY);
	if (!nla)
		goto nla_put_failure;
	err = FUNC11(&flow->key, skb);
	if (err)
		goto error;
	FUNC6(skb, nla);

	FUNC14(&flow->lock);
	used = flow->used;
	stats.n_packets = flow->packet_count;
	stats.n_bytes = flow->byte_count;
	tcp_flags = flow->tcp_flags;
	FUNC15(&flow->lock);

	if (used &&
	    FUNC9(skb, OVS_FLOW_ATTR_USED, FUNC12(used)))
		goto nla_put_failure;

	if (stats.n_packets &&
	    FUNC8(skb, OVS_FLOW_ATTR_STATS,
		    sizeof(struct ovs_flow_stats), &stats))
		goto nla_put_failure;

	if (tcp_flags &&
	    FUNC10(skb, OVS_FLOW_ATTR_TCP_FLAGS, tcp_flags))
		goto nla_put_failure;

	/* If OVS_FLOW_ATTR_ACTIONS doesn't fit, skip dumping the actions if
	 * this is the first flow to be dumped into 'skb'.  This is unusual for
	 * Netlink but individual action lists can be longer than
	 * NLMSG_GOODSIZE and thus entirely undumpable if we didn't do this.
	 * The userspace caller can always fetch the actions separately if it
	 * really wants them.  (Most userspace callers in fact don't care.)
	 *
	 * This can only fail for dump operations because the skb is always
	 * properly sized for single flows.
	 */
	start = FUNC7(skb, OVS_FLOW_ATTR_ACTIONS);
	if (start) {
		err = FUNC0(sf_acts->actions, sf_acts->actions_len, skb);
		if (!err)
			FUNC6(skb, start);
		else {
			if (skb_orig_len)
				goto error;

			FUNC5(skb, start);
		}
	} else if (skb_orig_len)
		goto nla_put_failure;

	return FUNC2(skb, ovs_header);

nla_put_failure:
	err = -EMSGSIZE;
error:
	FUNC1(skb, ovs_header);
	return err;
}