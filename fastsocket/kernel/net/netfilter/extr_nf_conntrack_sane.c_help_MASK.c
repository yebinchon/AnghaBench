#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {int doff; } ;
struct sk_buff {unsigned int len; } ;
struct sane_request {scalar_t__ RPC_code; } ;
struct sane_reply_net_start {scalar_t__ status; scalar_t__ zero; int /*<<< orphan*/  port; } ;
struct nf_ct_sane_master {scalar_t__ state; } ;
struct TYPE_9__ {int /*<<< orphan*/  u3; } ;
struct TYPE_8__ {int /*<<< orphan*/  u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_3__ src; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  tuple; } ;
struct nf_conn {TYPE_2__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  _tcph ;
struct TYPE_6__ {struct nf_ct_sane_master ct_sane_info; } ;
struct TYPE_10__ {TYPE_1__ help; } ;
struct TYPE_7__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int IP_CT_DIR_ORIGINAL ; 
 int IP_CT_ESTABLISHED ; 
 int IP_CT_IS_REPLY ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  NF_CT_EXPECT_CLASS_DEFAULT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  SANE_NET_START ; 
 void* SANE_STATE_NORMAL ; 
 scalar_t__ SANE_STATE_START_REQUESTED ; 
 int /*<<< orphan*/  SANE_STATUS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nf_conntrack_expect* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_expect*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conntrack_expect*) ; 
 scalar_t__ FUNC7 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  nf_sane_lock ; 
 TYPE_5__* FUNC9 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 struct tcphdr* sane_buffer ; 
 void* FUNC12 (struct sk_buff*,unsigned int,unsigned int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb,
		unsigned int protoff,
		struct nf_conn *ct,
		enum ip_conntrack_info ctinfo)
{
	unsigned int dataoff, datalen;
	const struct tcphdr *th;
	struct tcphdr _tcph;
	void *sb_ptr;
	int ret = NF_ACCEPT;
	int dir = FUNC1(ctinfo);
	struct nf_ct_sane_master *ct_sane_info;
	struct nf_conntrack_expect *exp;
	struct nf_conntrack_tuple *tuple;
	struct sane_request *req;
	struct sane_reply_net_start *reply;

	ct_sane_info = &FUNC9(ct)->help.ct_sane_info;
	/* Until there's been traffic both ways, don't look in packets. */
	if (ctinfo != IP_CT_ESTABLISHED &&
	    ctinfo != IP_CT_ESTABLISHED+IP_CT_IS_REPLY)
		return NF_ACCEPT;

	/* Not a full tcp header? */
	th = FUNC12(skb, protoff, sizeof(_tcph), &_tcph);
	if (th == NULL)
		return NF_ACCEPT;

	/* No data? */
	dataoff = protoff + th->doff * 4;
	if (dataoff >= skb->len)
		return NF_ACCEPT;

	datalen = skb->len - dataoff;

	FUNC13(&nf_sane_lock);
	sb_ptr = FUNC12(skb, dataoff, datalen, sane_buffer);
	FUNC0(sb_ptr == NULL);

	if (dir == IP_CT_DIR_ORIGINAL) {
		if (datalen != sizeof(struct sane_request))
			goto out;

		req = sb_ptr;
		if (req->RPC_code != FUNC2(SANE_NET_START)) {
			/* Not an interesting command */
			ct_sane_info->state = SANE_STATE_NORMAL;
			goto out;
		}

		/* We're interested in the next reply */
		ct_sane_info->state = SANE_STATE_START_REQUESTED;
		goto out;
	}

	/* Is it a reply to an uninteresting command? */
	if (ct_sane_info->state != SANE_STATE_START_REQUESTED)
		goto out;

	/* It's a reply to SANE_NET_START. */
	ct_sane_info->state = SANE_STATE_NORMAL;

	if (datalen < sizeof(struct sane_reply_net_start)) {
		FUNC11("nf_ct_sane: NET_START reply too short\n");
		goto out;
	}

	reply = sb_ptr;
	if (reply->status != FUNC2(SANE_STATUS_SUCCESS)) {
		/* saned refused the command */
		FUNC11("nf_ct_sane: unsuccessful SANE_STATUS = %u\n",
			 FUNC10(reply->status));
		goto out;
	}

	/* Invalid saned reply? Ignore it. */
	if (reply->zero != 0)
		goto out;

	exp = FUNC4(ct);
	if (exp == NULL) {
		ret = NF_DROP;
		goto out;
	}

	tuple = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;
	FUNC5(exp, NF_CT_EXPECT_CLASS_DEFAULT, FUNC8(ct),
			  &tuple->src.u3, &tuple->dst.u3,
			  IPPROTO_TCP, NULL, &reply->port);

	FUNC11("nf_ct_sane: expect: ");
	FUNC3(&exp->tuple);

	/* Can't expect this?  Best to drop packet now. */
	if (FUNC7(exp) != 0)
		ret = NF_DROP;

	FUNC6(exp);

out:
	FUNC14(&nf_sane_lock);
	return ret;
}