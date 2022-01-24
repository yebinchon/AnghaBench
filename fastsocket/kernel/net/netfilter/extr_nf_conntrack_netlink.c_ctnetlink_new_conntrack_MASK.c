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
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  status; } ;
typedef  enum ip_conntrack_events { ____Placeholder_ip_conntrack_events } ip_conntrack_events ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 size_t CTA_TUPLE_ORIG ; 
 size_t CTA_TUPLE_REPLY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int IPCT_HELPER ; 
 int IPCT_MARK ; 
 int IPCT_NATSEQADJ ; 
 int IPCT_NEW ; 
 int IPCT_PROTOINFO ; 
 int IPCT_RELATED ; 
 int IPCT_STATUS ; 
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 scalar_t__ FUNC0 (struct nf_conn*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int FUNC2 (struct nf_conn*) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 int FUNC4 (struct nf_conn*,struct nlattr const* const*) ; 
 struct nf_conn* FUNC5 (struct nlattr const* const*,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC7 (int,struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 struct nf_conn* FUNC10 (struct nf_conntrack_tuple_hash*) ; 
 struct nfgenmsg* FUNC11 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC12 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(struct sock *ctnl, struct sk_buff *skb,
			const struct nlmsghdr *nlh,
			const struct nlattr * const cda[])
{
	struct nf_conntrack_tuple otuple, rtuple;
	struct nf_conntrack_tuple_hash *h = NULL;
	struct nfgenmsg *nfmsg = FUNC11(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	int err = 0;

	if (cda[CTA_TUPLE_ORIG]) {
		err = FUNC6(cda, &otuple, CTA_TUPLE_ORIG, u3);
		if (err < 0)
			return err;
	}

	if (cda[CTA_TUPLE_REPLY]) {
		err = FUNC6(cda, &rtuple, CTA_TUPLE_REPLY, u3);
		if (err < 0)
			return err;
	}

	FUNC13(&nf_conntrack_lock);
	if (cda[CTA_TUPLE_ORIG])
		h = FUNC3(&init_net, &otuple);
	else if (cda[CTA_TUPLE_REPLY])
		h = FUNC3(&init_net, &rtuple);

	if (h == NULL) {
		err = -ENOENT;
		if (nlh->nlmsg_flags & NLM_F_CREATE) {
			struct nf_conn *ct;
			enum ip_conntrack_events events;

			if (!cda[CTA_TUPLE_ORIG] || !cda[CTA_TUPLE_REPLY]) {
				err = -EINVAL;
				goto out_unlock;
			}

			ct = FUNC5(cda, &otuple,
							&rtuple, u3);
			if (FUNC0(ct)) {
				err = FUNC2(ct);
				goto out_unlock;
			}
			err = 0;
			FUNC8(&ct->ct_general);
			FUNC14(&nf_conntrack_lock);
			if (FUNC15(IPS_EXPECTED_BIT, &ct->status))
				events = IPCT_RELATED;
			else
				events = IPCT_NEW;

			FUNC7((1 << IPCT_STATUS) |
						      (1 << IPCT_HELPER) |
						      (1 << IPCT_PROTOINFO) |
						      (1 << IPCT_NATSEQADJ) |
						      (1 << IPCT_MARK) | events,
						      ct, FUNC1(skb).pid,
						      FUNC12(nlh));
			FUNC9(ct);
		} else
			FUNC14(&nf_conntrack_lock);

		return err;
	}
	/* implicit 'else' */

	/* We manipulate the conntrack inside the global conntrack table lock,
	 * so there's no need to increase the refcount */
	err = -EEXIST;
	if (!(nlh->nlmsg_flags & NLM_F_EXCL)) {
		struct nf_conn *ct = FUNC10(h);

		err = FUNC4(ct, cda);
		if (err == 0) {
			FUNC8(&ct->ct_general);
			FUNC14(&nf_conntrack_lock);
			FUNC7((1 << IPCT_STATUS) |
						      (1 << IPCT_HELPER) |
						      (1 << IPCT_PROTOINFO) |
						      (1 << IPCT_NATSEQADJ) |
						      (1 << IPCT_MARK),
						      ct, FUNC1(skb).pid,
						      FUNC12(nlh));
			FUNC9(ct);
		} else
			FUNC14(&nf_conntrack_lock);

		return err;
	}

out_unlock:
	FUNC14(&nf_conntrack_lock);
	return err;
}