#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nf_nat_range {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn_nat {int /*<<< orphan*/  bysource; struct nf_conn* ct; } ;
struct nf_conn {int /*<<< orphan*/  status; TYPE_1__* tuplehash; } ;
struct TYPE_4__ {int /*<<< orphan*/ * nat_bysource; } ;
struct net {TYPE_2__ ipv4; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
struct TYPE_3__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPS_DST_NAT ; 
 int /*<<< orphan*/  IPS_DST_NAT_DONE_BIT ; 
 int /*<<< orphan*/  IPS_SRC_NAT ; 
 int /*<<< orphan*/  IPS_SRC_NAT_DONE_BIT ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int IP_NAT_MANIP_DST ; 
 int IP_NAT_MANIP_SRC ; 
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NF_CT_EXT_NAT ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,struct nf_nat_range const*,struct nf_conn*,int) ; 
 unsigned int FUNC3 (struct net*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*,struct nf_conntrack_tuple*) ; 
 struct nf_conn_nat* FUNC6 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 struct net* FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC10 (struct nf_conn*,int) ; 
 int /*<<< orphan*/  nf_nat_lock ; 
 struct nf_conn_nat* FUNC11 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

unsigned int
FUNC16(struct nf_conn *ct,
		  const struct nf_nat_range *range,
		  enum nf_nat_manip_type maniptype)
{
	struct net *net = FUNC8(ct);
	struct nf_conntrack_tuple curr_tuple, new_tuple;
	struct nf_conn_nat *nat;

	/* nat helper or nfctnetlink also setup binding */
	nat = FUNC11(ct);
	if (!nat) {
		nat = FUNC6(ct, NF_CT_EXT_NAT, GFP_ATOMIC);
		if (nat == NULL) {
			FUNC12("failed to add NAT extension\n");
			return NF_ACCEPT;
		}
	}

	FUNC1(maniptype == IP_NAT_MANIP_SRC ||
		     maniptype == IP_NAT_MANIP_DST);
	FUNC0(FUNC10(ct, maniptype));

	/* What we've got will look like inverse of reply. Normally
	   this is what is in the conntrack, except for prior
	   manipulations (future optimization: if num_manips == 0,
	   orig_tp =
	   conntrack->tuplehash[IP_CT_DIR_ORIGINAL].tuple) */
	FUNC7(&curr_tuple,
			     &ct->tuplehash[IP_CT_DIR_REPLY].tuple);

	FUNC2(&new_tuple, &curr_tuple, range, ct, maniptype);

	if (!FUNC9(&new_tuple, &curr_tuple)) {
		struct nf_conntrack_tuple reply;

		/* Alter conntrack table so will recognize replies. */
		FUNC7(&reply, &new_tuple);
		FUNC5(ct, &reply);

		/* Non-atomic: we own this at the moment. */
		if (maniptype == IP_NAT_MANIP_SRC)
			ct->status |= IPS_SRC_NAT;
		else
			ct->status |= IPS_DST_NAT;
	}

	if (maniptype == IP_NAT_MANIP_SRC) {
		unsigned int srchash;

		srchash = FUNC3(net, &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
		FUNC14(&nf_nat_lock);
		/* nf_conntrack_alter_reply might re-allocate exntension aera */
		nat = FUNC11(ct);
		nat->ct = ct;
		FUNC4(&nat->bysource,
				   &net->ipv4.nat_bysource[srchash]);
		FUNC15(&nf_nat_lock);
	}

	/* It's done. */
	if (maniptype == IP_NAT_MANIP_DST)
		FUNC13(IPS_DST_NAT_DONE_BIT, &ct->status);
	else
		FUNC13(IPS_SRC_NAT_DONE_BIT, &ct->status);

	return NF_ACCEPT;
}