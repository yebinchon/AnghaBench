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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ vlan_tci; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct dp_upcall_info {int /*<<< orphan*/  pid; struct nlattr* userdata; int /*<<< orphan*/  key; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_KEY ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_PACKET ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_USERDATA ; 
 scalar_t__ USHORT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dp_packet_genl_family ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct ovs_header*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ovs_header* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC19(struct net *net, int dp_ifindex,
				  struct sk_buff *skb,
				  const struct dp_upcall_info *upcall_info)
{
	struct ovs_header *upcall;
	struct sk_buff *nskb = NULL;
	struct sk_buff *user_skb; /* to be queued to userspace */
	struct nlattr *nla;
	int err;

	if (FUNC18(skb)) {
		nskb = FUNC14(skb, GFP_ATOMIC);
		if (!nskb)
			return -ENOMEM;

		nskb = FUNC2(nskb, FUNC17(nskb));
		if (!nskb)
			return -ENOMEM;

		nskb->vlan_tci = 0;
		skb = nskb;
	}

	if (FUNC8(skb->len) > USHORT_MAX) {
		err = -EFBIG;
		goto out;
	}

	user_skb = FUNC4(FUNC16(skb, upcall_info->userdata), GFP_ATOMIC);
	if (!user_skb) {
		err = -ENOMEM;
		goto out;
	}

	upcall = FUNC5(user_skb, 0, 0, &dp_packet_genl_family,
			     0, upcall_info->cmd);
	upcall->dp_ifindex = dp_ifindex;

	nla = FUNC12(user_skb, OVS_PACKET_ATTR_KEY);
	FUNC13(upcall_info->key, user_skb);
	FUNC11(user_skb, nla);

	if (upcall_info->userdata)
		FUNC0(user_skb, OVS_PACKET_ATTR_USERDATA,
			  FUNC10(upcall_info->userdata),
			  FUNC9(upcall_info->userdata));

	nla = FUNC1(user_skb, OVS_PACKET_ATTR_PACKET, skb->len);

	FUNC15(skb, FUNC9(nla));

	FUNC3(user_skb, upcall);
	err = FUNC6(net, user_skb, upcall_info->pid);

out:
	FUNC7(nskb);
	return err;
}