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
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 size_t CTA_ID ; 
 size_t CTA_TUPLE_ORIG ; 
 size_t CTA_TUPLE_REPLY ; 
 int ENOENT ; 
 int /*<<< orphan*/  IPCT_DESTROY ; 
 int /*<<< orphan*/  IPS_DYING_BIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 struct nf_conn* FUNC9 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC11 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC12 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct sock *ctnl, struct sk_buff *skb,
			const struct nlmsghdr *nlh,
			const struct nlattr * const cda[])
{
	struct nf_conntrack_tuple_hash *h;
	struct nf_conntrack_tuple tuple;
	struct nf_conn *ct;
	struct nfgenmsg *nfmsg = FUNC11(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	int err = 0;

	if (cda[CTA_TUPLE_ORIG])
		err = FUNC1(cda, &tuple, CTA_TUPLE_ORIG, u3);
	else if (cda[CTA_TUPLE_REPLY])
		err = FUNC1(cda, &tuple, CTA_TUPLE_REPLY, u3);
	else {
		/* Flush the whole table */
		FUNC4(&init_net,
					 FUNC0(skb).pid,
					 FUNC12(nlh));
		return 0;
	}

	if (err < 0)
		return err;

	h = FUNC3(&init_net, &tuple);
	if (!h)
		return -ENOENT;

	ct = FUNC9(h);

	if (cda[CTA_ID]) {
		u_int32_t id = FUNC13(FUNC10(cda[CTA_ID]));
		if (id != (u32)(unsigned long)ct) {
			FUNC8(ct);
			return -ENOENT;
		}
	}

	if (FUNC2(IPCT_DESTROY, ct,
				      FUNC0(skb).pid,
				      FUNC12(nlh)) < 0) {
		FUNC5(ct);
		/* we failed to report the event, try later */
		FUNC6(ct);
		FUNC8(ct);
		return 0;
	}

	/* death_by_timeout would report the event again */
	FUNC14(IPS_DYING_BIT, &ct->status);

	FUNC7(ct);
	FUNC8(ct);

	return 0;
}