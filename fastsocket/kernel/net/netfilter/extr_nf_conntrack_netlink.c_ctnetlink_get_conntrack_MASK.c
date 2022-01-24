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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 size_t CTA_TUPLE_ORIG ; 
 size_t CTA_TUPLE_REPLY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPCTNL_MSG_CT_NEW ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  ctnetlink_done ; 
 int /*<<< orphan*/  ctnetlink_dump_table ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conn*) ; 
 int FUNC2 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC6 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 struct nf_conn* FUNC8 (struct nf_conntrack_tuple_hash*) ; 
 struct nfgenmsg* FUNC9 (struct nlmsghdr const*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct sock *ctnl, struct sk_buff *skb,
			const struct nlmsghdr *nlh,
			const struct nlattr * const cda[])
{
	struct nf_conntrack_tuple_hash *h;
	struct nf_conntrack_tuple tuple;
	struct nf_conn *ct;
	struct sk_buff *skb2 = NULL;
	struct nfgenmsg *nfmsg = FUNC9(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	int err = 0;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.dump = ctnetlink_dump_table,
			.done = ctnetlink_done,
		};
		return FUNC4(ctnl, skb, nlh, &c);
	}

	if (cda[CTA_TUPLE_ORIG])
		err = FUNC2(cda, &tuple, CTA_TUPLE_ORIG, u3);
	else if (cda[CTA_TUPLE_REPLY])
		err = FUNC2(cda, &tuple, CTA_TUPLE_REPLY, u3);
	else
		return -EINVAL;

	if (err < 0)
		return err;

	h = FUNC6(&init_net, &tuple);
	if (!h)
		return -ENOENT;

	ct = FUNC8(h);

	err = -ENOMEM;
	skb2 = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL) {
		FUNC7(ct);
		return -ENOMEM;
	}

	FUNC11();
	err = FUNC1(skb2, FUNC0(skb).pid, nlh->nlmsg_seq,
				  IPCTNL_MSG_CT_NEW, ct);
	FUNC12();
	FUNC7(ct);
	if (err <= 0)
		goto free;

	err = FUNC5(ctnl, skb2, FUNC0(skb).pid, MSG_DONTWAIT);
	if (err < 0)
		goto out;

	return 0;

free:
	FUNC3(skb2);
out:
	return err;
}