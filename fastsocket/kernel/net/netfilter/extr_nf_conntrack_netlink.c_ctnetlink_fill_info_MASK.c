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
typedef  scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int CTA_TUPLE_ORIG ; 
 int CTA_TUPLE_REPLY ; 
 int /*<<< orphan*/  IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int NFNL_SUBSYS_CTNETLINK ; 
 int NLA_F_NESTED ; 
 unsigned int NLM_F_MULTI ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct nf_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC13 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC17 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC19 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC20(struct sk_buff *skb, u32 pid, u32 seq,
		    int event, struct nf_conn *ct)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	struct nlattr *nest_parms;
	unsigned int flags = pid ? NLM_F_MULTI : 0;

	event |= NFNL_SUBSYS_CTNETLINK << 8;
	nlh = FUNC19(skb, pid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC17(nlh);
	nfmsg->nfgen_family = FUNC12(ct);
	nfmsg->version      = NFNETLINK_V0;
	nfmsg->res_id	    = 0;

	nest_parms = FUNC15(skb, CTA_TUPLE_ORIG | NLA_F_NESTED);
	if (!nest_parms)
		goto nla_put_failure;
	if (FUNC10(skb, FUNC13(ct, IP_CT_DIR_ORIGINAL)) < 0)
		goto nla_put_failure;
	FUNC14(skb, nest_parms);

	nest_parms = FUNC15(skb, CTA_TUPLE_REPLY | NLA_F_NESTED);
	if (!nest_parms)
		goto nla_put_failure;
	if (FUNC10(skb, FUNC13(ct, IP_CT_DIR_REPLY)) < 0)
		goto nla_put_failure;
	FUNC14(skb, nest_parms);

	if (FUNC8(skb, ct) < 0 ||
	    FUNC9(skb, ct) < 0 ||
	    FUNC0(skb, ct, IP_CT_DIR_ORIGINAL) < 0 ||
	    FUNC0(skb, ct, IP_CT_DIR_REPLY) < 0 ||
	    FUNC6(skb, ct) < 0 ||
	    FUNC1(skb, ct) < 0 ||
	    FUNC3(skb, ct) < 0 ||
	    FUNC7(skb, ct) < 0 ||
	    FUNC2(skb, ct) < 0 ||
	    FUNC11(skb, ct) < 0 ||
	    FUNC4(skb, ct) < 0 ||
	    FUNC5(skb, ct) < 0)
		goto nla_put_failure;

	FUNC18(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC16(skb, nlh);
	return -1;
}