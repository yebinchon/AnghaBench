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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct TYPE_2__ {int expires; } ;
struct nf_conn {TYPE_1__ timeout; struct nf_conn* master; int /*<<< orphan*/  status; void* mark; } ;

/* Variables and functions */
 size_t CTA_HELP ; 
 size_t CTA_MARK ; 
 size_t CTA_NAT_DST ; 
 size_t CTA_NAT_SEQ_ADJ_ORIG ; 
 size_t CTA_NAT_SEQ_ADJ_REPLY ; 
 size_t CTA_NAT_SRC ; 
 size_t CTA_PROTOINFO ; 
 size_t CTA_STATUS ; 
 size_t CTA_TIMEOUT ; 
 size_t CTA_TUPLE_MASTER ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct nf_conn* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  IPS_CONFIRMED ; 
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 scalar_t__ FUNC1 (struct nf_conn*) ; 
 struct nf_conntrack_helper* FUNC2 (char*) ; 
 int FUNC3 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC7 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC8 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC9 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC10 (struct nlattr const* const,char**) ; 
 int FUNC11 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int jiffies ; 
 struct nf_conn* FUNC12 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC13 (int /*<<< orphan*/ *,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC14 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC15 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC16 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conn_help* FUNC18 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC19 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC20 (struct nlattr const* const) ; 
 void* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct nf_conntrack_helper*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ FUNC25 (char*,char*) ; 

__attribute__((used)) static struct nf_conn *
FUNC26(const struct nlattr * const cda[],
			   struct nf_conntrack_tuple *otuple,
			   struct nf_conntrack_tuple *rtuple,
			   u8 u3)
{
	struct nf_conn *ct;
	int err = -EINVAL;
	struct nf_conntrack_helper *helper;

	ct = FUNC12(&init_net, otuple, rtuple, GFP_ATOMIC);
	if (FUNC1(ct))
		return FUNC0(-ENOMEM);

	if (!cda[CTA_TIMEOUT])
		goto err1;
	ct->timeout.expires = FUNC21(FUNC20(cda[CTA_TIMEOUT]));

	ct->timeout.expires = jiffies + ct->timeout.expires * HZ;
	ct->status |= IPS_CONFIRMED;

	FUNC23();
 	if (cda[CTA_HELP]) {
		char *helpname = NULL;
 
 		err = FUNC10(cda[CTA_HELP], &helpname);
 		if (err < 0)
			goto err2;

		helper = FUNC2(helpname);
		if (helper == NULL) {
			FUNC24();
#ifdef CONFIG_MODULES
			if (request_module("nfct-helper-%s", helpname) < 0) {
				err = -EOPNOTSUPP;
				goto err1;
			}

			rcu_read_lock();
			helper = __nf_conntrack_helper_find_byname(helpname);
			if (helper) {
				err = -EAGAIN;
				goto err2;
			}
			rcu_read_unlock();
#endif
			err = -EOPNOTSUPP;
			goto err1;
		} else {
			struct nf_conn_help *help;

			help = FUNC18(ct, GFP_ATOMIC);
			if (help == NULL) {
				err = -ENOMEM;
				goto err2;
			}

			/* not in hash table yet so not strictly necessary */
			FUNC22(help->helper, helper);
		}
	} else {
		/* try an implicit helper assignation */
		err = FUNC3(ct, GFP_ATOMIC);
		if (err < 0)
			goto err2;
	}

	if (cda[CTA_STATUS]) {
		err = FUNC9(ct, cda);
		if (err < 0)
			goto err2;
	}

	if (cda[CTA_NAT_SRC] || cda[CTA_NAT_DST]) {
		err = FUNC6(ct, cda);
		if (err < 0)
			goto err2;
	}

#ifdef CONFIG_NF_NAT_NEEDED
	if (cda[CTA_NAT_SEQ_ADJ_ORIG] || cda[CTA_NAT_SEQ_ADJ_REPLY]) {
		err = ctnetlink_change_nat_seq_adj(ct, cda);
		if (err < 0)
			goto err2;
	}
#endif

	if (cda[CTA_PROTOINFO]) {
		err = FUNC8(ct, cda);
		if (err < 0)
			goto err2;
	}

	FUNC16(ct, GFP_ATOMIC);
	FUNC17(ct, GFP_ATOMIC);

#if defined(CONFIG_NF_CONNTRACK_MARK)
	if (cda[CTA_MARK])
		ct->mark = ntohl(nla_get_be32(cda[CTA_MARK]));
#endif

	/* setup master conntrack: this is a confirmed expectation */
	if (cda[CTA_TUPLE_MASTER]) {
		struct nf_conntrack_tuple master;
		struct nf_conntrack_tuple_hash *master_h;
		struct nf_conn *master_ct;

		err = FUNC11(cda, &master, CTA_TUPLE_MASTER, u3);
		if (err < 0)
			goto err2;

		master_h = FUNC13(&init_net, &master);
		if (master_h == NULL) {
			err = -ENOENT;
			goto err2;
		}
		master_ct = FUNC19(master_h);
		FUNC4(IPS_EXPECTED_BIT, &ct->status);
		ct->master = master_ct;
	}

	FUNC5(&ct->timeout);
	FUNC15(ct);
	FUNC24();

	return ct;

err2:
	FUNC24();
err1:
	FUNC14(ct);
	return FUNC0(err);
}