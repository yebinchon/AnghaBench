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
struct sock {int dummy; } ;
struct netlink_sock {scalar_t__ pid; int ngroups; int flags; int /*<<< orphan*/  groups; } ;
struct netlink_broadcast_data {scalar_t__ pid; int group; int failure; int delivery_failure; int congested; int delivered; int /*<<< orphan*/ * skb2; int /*<<< orphan*/  skb; int /*<<< orphan*/  allocation; int /*<<< orphan*/  net; struct sock* exclude_sk; } ;

/* Variables and functions */
 int NETLINK_BROADCAST_SEND_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct netlink_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC14(struct sock *sk,
				   struct netlink_broadcast_data *p)
{
	struct netlink_sock *nlk = FUNC4(sk);
	int val;

	if (p->exclude_sk == sk)
		goto out;

	if (nlk->pid == p->pid || p->group - 1 >= nlk->ngroups ||
	    !FUNC13(p->group - 1, nlk->groups))
		goto out;

	if (!FUNC1(FUNC11(sk), p->net))
		goto out;

	if (p->failure) {
		FUNC3(sk);
		goto out;
	}

	FUNC10(sk);
	if (p->skb2 == NULL) {
		if (FUNC9(p->skb)) {
			p->skb2 = FUNC6(p->skb, p->allocation);
		} else {
			p->skb2 = FUNC7(p->skb);
			/*
			 * skb ownership may have been set when
			 * delivered to a previous socket.
			 */
			FUNC8(p->skb2);
		}
	}
	if (p->skb2 == NULL) {
		FUNC3(sk);
		/* Clone failed. Notify ALL listeners. */
		p->failure = 1;
		if (nlk->flags & NETLINK_BROADCAST_SEND_ERROR)
			p->delivery_failure = 1;
	} else if (FUNC5(sk, p->skb2)) {
		FUNC0(p->skb2);
		p->skb2 = NULL;
	} else if ((val = FUNC2(sk, p->skb2)) < 0) {
		FUNC3(sk);
		if (nlk->flags & NETLINK_BROADCAST_SEND_ERROR)
			p->delivery_failure = 1;
	} else {
		p->congested |= val;
		p->delivered = 1;
		p->skb2 = NULL;
	}
	FUNC12(sk);

out:
	return 0;
}