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
struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple_hash {int /*<<< orphan*/  hnnode; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_l4proto {int /*<<< orphan*/  (* new ) (struct nf_conn*,struct sk_buff*,unsigned int) ;} ;
struct nf_conntrack_l3proto {int dummy; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  (* expectfn ) (struct nf_conn*,struct nf_conntrack_expect*) ;TYPE_1__* master; scalar_t__ helper; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {struct nf_conntrack_tuple_hash* tuplehash; TYPE_1__* master; int /*<<< orphan*/  secmark; int /*<<< orphan*/  mark; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  unconfirmed; } ;
struct net {TYPE_2__ ct; } ;
struct TYPE_3__ {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  secmark; int /*<<< orphan*/  mark; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 scalar_t__ FUNC0 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expect_new ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new ; 
 struct nf_conn* FUNC5 (struct net*,struct nf_conntrack_tuple const*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nf_conntrack_expect*) ; 
 struct nf_conntrack_expect* FUNC11 (struct net*,struct nf_conntrack_tuple const*) ; 
 struct nf_conn_help* FUNC12 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*,struct nf_conntrack_l3proto*,struct nf_conntrack_l4proto*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct nf_conn*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct nf_conn*,struct nf_conntrack_expect*) ; 

__attribute__((used)) static struct nf_conntrack_tuple_hash *
FUNC20(struct net *net,
	       const struct nf_conntrack_tuple *tuple,
	       struct nf_conntrack_l3proto *l3proto,
	       struct nf_conntrack_l4proto *l4proto,
	       struct sk_buff *skb,
	       unsigned int dataoff)
{
	struct nf_conn *ct;
	struct nf_conn_help *help;
	struct nf_conntrack_tuple repl_tuple;
	struct nf_conntrack_expect *exp;

	if (!FUNC13(&repl_tuple, tuple, l3proto, l4proto)) {
		FUNC14("Can't invert tuple.\n");
		return NULL;
	}

	ct = FUNC5(net, tuple, &repl_tuple, GFP_ATOMIC);
	if (FUNC0(ct)) {
		FUNC14("Can't allocate conntrack.\n");
		return (struct nf_conntrack_tuple_hash *)ct;
	}

	if (!l4proto->new(ct, skb, dataoff)) {
		FUNC6(ct);
		FUNC14("init conntrack: can't track with proto module\n");
		return NULL;
	}

	FUNC8(ct, GFP_ATOMIC);
	FUNC9(ct, GFP_ATOMIC);

	FUNC16(&nf_conntrack_lock);
	exp = FUNC11(net, tuple);
	if (exp) {
		FUNC14("conntrack: expectation arrives ct=%p exp=%p\n",
			 ct, exp);
		/* Welcome, Mr. Bond.  We've been expecting you... */
		FUNC3(IPS_EXPECTED_BIT, &ct->status);
		ct->master = exp->master;
		if (exp->helper) {
			help = FUNC12(ct, GFP_ATOMIC);
			if (help)
				FUNC15(help->helper, exp->helper);
		}

#ifdef CONFIG_NF_CONNTRACK_MARK
		ct->mark = exp->master->mark;
#endif
#ifdef CONFIG_NF_CONNTRACK_SECMARK
		ct->secmark = exp->master->secmark;
#endif
		FUNC7(&ct->master->ct_general);
		FUNC1(net, expect_new);
	} else {
		FUNC2(ct, GFP_ATOMIC);
		FUNC1(net, new);
	}

	/* Overload tuple linked list to put us in unconfirmed list. */
	FUNC4(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
		       &net->ct.unconfirmed);

	FUNC17(&nf_conntrack_lock);

	if (exp) {
		if (exp->expectfn)
			exp->expectfn(ct, exp);
		FUNC10(exp);
	}

	return &ct->tuplehash[IP_CT_DIR_ORIGINAL];
}