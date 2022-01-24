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
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 size_t CTA_EXPECT_MASK ; 
 size_t CTA_EXPECT_MASTER ; 
 size_t CTA_EXPECT_TUPLE ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 struct nf_conntrack_expect* FUNC1 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 int FUNC2 (struct nf_conntrack_expect*,struct nlattr const* const*) ; 
 int FUNC3 (struct nlattr const* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 struct nfgenmsg* FUNC5 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct sock *ctnl, struct sk_buff *skb,
		     const struct nlmsghdr *nlh,
		     const struct nlattr * const cda[])
{
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_expect *exp;
	struct nfgenmsg *nfmsg = FUNC5(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	int err = 0;

	if (!cda[CTA_EXPECT_TUPLE]
	    || !cda[CTA_EXPECT_MASK]
	    || !cda[CTA_EXPECT_MASTER])
		return -EINVAL;

	err = FUNC4(cda, &tuple, CTA_EXPECT_TUPLE, u3);
	if (err < 0)
		return err;

	FUNC7(&nf_conntrack_lock);
	exp = FUNC1(&init_net, &tuple);

	if (!exp) {
		FUNC8(&nf_conntrack_lock);
		err = -ENOENT;
		if (nlh->nlmsg_flags & NLM_F_CREATE) {
			err = FUNC3(cda,
						      u3,
						      FUNC0(skb).pid,
						      FUNC6(nlh));
		}
		return err;
	}

	err = -EEXIST;
	if (!(nlh->nlmsg_flags & NLM_F_EXCL))
		err = FUNC2(exp, cda);
	FUNC8(&nf_conntrack_lock);

	return err;
}