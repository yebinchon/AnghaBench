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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 size_t CTA_EXPECT_ID ; 
 size_t CTA_EXPECT_MASTER ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPCTNL_MSG_EXP_NEW ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  ctnetlink_exp_done ; 
 int /*<<< orphan*/  ctnetlink_exp_dump_table ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_expect*) ; 
 int FUNC2 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_expect* FUNC6 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC9 (struct nlmsghdr const*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int
FUNC14(struct sock *ctnl, struct sk_buff *skb,
		     const struct nlmsghdr *nlh,
		     const struct nlattr * const cda[])
{
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_expect *exp;
	struct sk_buff *skb2;
	struct nfgenmsg *nfmsg = FUNC9(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	int err = 0;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.dump = ctnetlink_exp_dump_table,
			.done = ctnetlink_exp_done,
		};
		return FUNC4(ctnl, skb, nlh, &c);
	}

	if (cda[CTA_EXPECT_MASTER])
		err = FUNC2(cda, &tuple, CTA_EXPECT_MASTER, u3);
	else
		return -EINVAL;

	if (err < 0)
		return err;

	exp = FUNC6(&init_net, &tuple);
	if (!exp)
		return -ENOENT;

	if (cda[CTA_EXPECT_ID]) {
		__be32 id = FUNC8(cda[CTA_EXPECT_ID]);
		if (FUNC11(id) != (u32)(unsigned long)exp) {
			FUNC7(exp);
			return -ENOENT;
		}
	}

	err = -ENOMEM;
	skb2 = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL)
		goto out;

	FUNC12();
	err = FUNC1(skb2, FUNC0(skb).pid,
				      nlh->nlmsg_seq, IPCTNL_MSG_EXP_NEW, exp);
	FUNC13();
	if (err <= 0)
		goto free;

	FUNC7(exp);

	return FUNC5(ctnl, skb2, FUNC0(skb).pid, MSG_DONTWAIT);

free:
	FUNC3(skb2);
out:
	FUNC7(exp);
	return err;
}