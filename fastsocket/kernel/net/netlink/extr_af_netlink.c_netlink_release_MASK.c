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
struct socket {struct sock* sk; } ;
struct sock {size_t sk_protocol; int /*<<< orphan*/  sk_write_queue; } ;
struct netlink_sock {int /*<<< orphan*/ * groups; scalar_t__ subscriptions; int /*<<< orphan*/  module; scalar_t__ pid; int /*<<< orphan*/  wait; } ;
struct netlink_notify {size_t protocol; scalar_t__ pid; int /*<<< orphan*/  net; } ;
struct TYPE_2__ {scalar_t__ registered; int /*<<< orphan*/ * module; int /*<<< orphan*/ * listeners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NETLINK_URELEASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_notify*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_chain ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  netlink_proto ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 TYPE_1__* nl_table ; 
 struct netlink_sock* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct netlink_sock *nlk;

	if (!sk)
		return 0;

	FUNC7(sk);
	FUNC14(sk);
	nlk = FUNC11(sk);

	/*
	 * OK. Socket is unlinked, any packets that arrive now
	 * will be purged.
	 */

	sock->sk = NULL;
	FUNC17(&nlk->wait);

	FUNC12(&sk->sk_write_queue);

	if (nlk->pid && !nlk->subscriptions) {
		struct netlink_notify n = {
						.net = FUNC13(sk),
						.protocol = sk->sk_protocol,
						.pid = nlk->pid,
					  };
		FUNC1(&netlink_chain,
				NETLINK_URELEASE, &n);
	}

	FUNC5(nlk->module);

	FUNC8();
	if (FUNC6(sk)) {
		FUNC0(nl_table[sk->sk_protocol].registered == 0);
		if (--nl_table[sk->sk_protocol].registered == 0) {
			FUNC2(nl_table[sk->sk_protocol].listeners);
			nl_table[sk->sk_protocol].module = NULL;
			nl_table[sk->sk_protocol].registered = 0;
		}
	} else if (nlk->subscriptions)
		FUNC10(sk);
	FUNC9();

	FUNC2(nlk->groups);
	nlk->groups = NULL;

	FUNC3();
	FUNC15(FUNC13(sk), &netlink_proto, -1);
	FUNC4();
	FUNC16(sk);
	return 0;
}