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
struct sock {int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct netlink_sock {int flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int NETLINK_RECV_NO_ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct netlink_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct netlink_sock *nlk = FUNC1(sk);

	if (!(nlk->flags & NETLINK_RECV_NO_ENOBUFS)) {
		if (!FUNC3(0, &FUNC1(sk)->state)) {
			sk->sk_err = ENOBUFS;
			sk->sk_error_report(sk);
		}
	}
	FUNC0(&sk->sk_drops);
}