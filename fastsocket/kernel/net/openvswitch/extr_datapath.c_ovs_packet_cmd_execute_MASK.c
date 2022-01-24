#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  skb_mark; int /*<<< orphan*/  priority; } ;
struct TYPE_6__ {TYPE_1__ phy; } ;
struct sw_flow_actions {TYPE_2__ key; int /*<<< orphan*/  sf_acts; } ;
struct sw_flow {TYPE_2__ key; int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int /*<<< orphan*/  sk; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  protocol; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct ovs_header* userhdr; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
struct datapath {int dummy; } ;
struct TYPE_7__ {struct sw_flow_actions* flow; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sw_flow_actions*) ; 
 scalar_t__ NET_IP_ALIGN ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 size_t OVS_PACKET_ATTR_ACTIONS ; 
 size_t OVS_PACKET_ATTR_KEY ; 
 size_t OVS_PACKET_ATTR_PACKET ; 
 int FUNC2 (struct sw_flow_actions*) ; 
 struct sk_buff* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct ethhdr* FUNC5 (struct sk_buff*) ; 
 struct datapath* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct nlattr*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct datapath*,struct sk_buff*) ; 
 struct sw_flow_actions* FUNC15 (int) ; 
 struct sw_flow_actions* FUNC16 () ; 
 int FUNC17 (struct sk_buff*,int,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct sw_flow_actions*) ; 
 int FUNC19 (struct sw_flow_actions*,int,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct sw_flow_actions*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (struct nlattr*,TYPE_2__*,int /*<<< orphan*/ ,struct sw_flow_actions**) ; 

__attribute__((used)) static int FUNC27(struct sk_buff *skb, struct genl_info *info)
{
	struct ovs_header *ovs_header = info->userhdr;
	struct nlattr **a = info->attrs;
	struct sw_flow_actions *acts;
	struct sk_buff *packet;
	struct sw_flow *flow;
	struct datapath *dp;
	struct ethhdr *eth;
	int len;
	int err;
	int key_len;

	err = -EINVAL;
	if (!a[OVS_PACKET_ATTR_PACKET] || !a[OVS_PACKET_ATTR_KEY] ||
	    !a[OVS_PACKET_ATTR_ACTIONS])
		goto err;

	len = FUNC11(a[OVS_PACKET_ATTR_PACKET]);
	packet = FUNC3(NET_IP_ALIGN + len, GFP_KERNEL);
	err = -ENOMEM;
	if (!packet)
		goto err;
	FUNC23(packet, NET_IP_ALIGN);

	FUNC12(FUNC4(packet, len), a[OVS_PACKET_ATTR_PACKET], len);

	FUNC24(packet);
	eth = FUNC5(packet);

	/* Normally, setting the skb 'protocol' field would be handled by a
	 * call to eth_type_trans(), but it assumes there's a sending
	 * device, which we may not have. */
	if (FUNC13(eth->h_proto) >= 1536)
		packet->protocol = eth->h_proto;
	else
		packet->protocol = FUNC7(ETH_P_802_2);

	/* Build an sw_flow for sending this packet. */
	flow = FUNC16();
	err = FUNC2(flow);
	if (FUNC0(flow))
		goto err_kfree_skb;

	err = FUNC17(packet, -1, &flow->key, &key_len);
	if (err)
		goto err_flow_free;

	err = FUNC19(flow, key_len, a[OVS_PACKET_ATTR_KEY]);
	if (err)
		goto err_flow_free;
	acts = FUNC15(FUNC11(a[OVS_PACKET_ATTR_ACTIONS]));
	err = FUNC2(acts);
	if (FUNC0(acts))
		goto err_flow_free;

	err = FUNC26(a[OVS_PACKET_ATTR_ACTIONS], &flow->key, 0, &acts);
	FUNC20(flow->sf_acts, acts);
	if (err)
		goto err_flow_free;

	FUNC1(packet)->flow = flow;
	packet->priority = flow->key.phy.priority;
	packet->mark = flow->key.phy.skb_mark;

	FUNC21();
	dp = FUNC6(FUNC25(skb->sk), ovs_header->dp_ifindex);
	err = -ENODEV;
	if (!dp)
		goto err_unlock;

	FUNC9();
	err = FUNC14(dp, packet);
	FUNC10();
	FUNC22();

	FUNC18(flow);
	return err;

err_unlock:
	FUNC22();
err_flow_free:
	FUNC18(flow);
err_kfree_skb:
	FUNC8(packet);
err:
	return err;
}