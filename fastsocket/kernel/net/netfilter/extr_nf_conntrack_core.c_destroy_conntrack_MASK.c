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
struct nf_conntrack_l4proto {int /*<<< orphan*/  (* destroy ) (struct nf_conn*) ;} ;
struct nf_conntrack {int /*<<< orphan*/  use; } ;
struct nf_conn {scalar_t__ master; TYPE_1__* tuplehash; int /*<<< orphan*/  timeout; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hnnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l4proto* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  delete ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 struct net* FUNC10 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC21(struct nf_conntrack *nfct)
{
	struct nf_conn *ct = (struct nf_conn *)nfct;
	struct net *net = FUNC10(ct);
	struct nf_conntrack_l4proto *l4proto;

	FUNC14("destroy_conntrack(%p)\n", ct);
	FUNC1(FUNC4(&nfct->use) == 0);
	FUNC1(!FUNC20(&ct->timeout));

	/* To make sure we don't get any weird locking issues here:
	 * destroy_conntrack() MUST NOT be called with a write lock
	 * to nf_conntrack_lock!!! -HW */
	FUNC15();
	l4proto = FUNC3(FUNC9(ct), FUNC11(ct));
	if (l4proto && l4proto->destroy)
		l4proto->destroy(ct);

	FUNC16();

	FUNC17(&nf_conntrack_lock);
	/* Expectations will have been removed in clean_from_lists,
	 * except TFTP can create an expectation on the first packet,
	 * before connection is in the list, so we need to clean here,
	 * too. */
	FUNC13(ct);

	/* We overload first tuple to link into unconfirmed list. */
	if (!FUNC8(ct)) {
		FUNC0(FUNC6(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode));
		FUNC5(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
	}

	FUNC2(net, delete);
	FUNC18(&nf_conntrack_lock);

	if (ct->master)
		FUNC12(ct->master);

	FUNC14("destroy_conntrack: returning ct=%p to slab\n", ct);
	FUNC7(ct);
}