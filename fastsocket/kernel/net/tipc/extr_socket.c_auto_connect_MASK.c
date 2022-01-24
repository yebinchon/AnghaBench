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
struct TYPE_4__ {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct tipc_sock {TYPE_1__* p; TYPE_2__ peer_name; } ;
struct tipc_msg {int dummy; } ;
struct socket {int /*<<< orphan*/  state; int /*<<< orphan*/  sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  SS_DISCONNECTING ; 
 scalar_t__ FUNC0 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_sock* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct tipc_msg *msg)
{
	struct tipc_sock *tsock = FUNC6(sock->sk);

	if (FUNC0(msg)) {
		sock->state = SS_DISCONNECTING;
		return -ECONNREFUSED;
	}

	tsock->peer_name.ref = FUNC3(msg);
	tsock->peer_name.node = FUNC2(msg);
	FUNC4(tsock->p->ref, &tsock->peer_name);
	FUNC5(tsock->p->ref, FUNC1(msg));
	sock->state = SS_CONNECTED;
	return 0;
}