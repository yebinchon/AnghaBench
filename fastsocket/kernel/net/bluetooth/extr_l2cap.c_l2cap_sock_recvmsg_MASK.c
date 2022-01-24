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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {scalar_t__ msg_namelen; } ;
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; } ;
struct kiocb {int dummy; } ;
typedef  int /*<<< orphan*/  rsp ;
struct TYPE_4__ {scalar_t__ defer_setup; } ;
struct TYPE_3__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  conn; int /*<<< orphan*/  scid; int /*<<< orphan*/  dcid; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP ; 
 int /*<<< orphan*/  L2CAP_CR_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_CS_NO_INFO ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 int FUNC1 (struct kiocb*,struct socket*,struct msghdr*,size_t,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_conn_rsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct kiocb *iocb, struct socket *sock, struct msghdr *msg, size_t len, int flags)
{
	struct sock *sk = sock->sk;

	FUNC5(sk);

	msg->msg_namelen = 0;

	if (sk->sk_state == BT_CONNECT2 && FUNC0(sk)->defer_setup) {
		struct l2cap_conn_rsp rsp;

		sk->sk_state = BT_CONFIG;

		rsp.scid   = FUNC2(FUNC3(sk)->dcid);
		rsp.dcid   = FUNC2(FUNC3(sk)->scid);
		rsp.result = FUNC2(L2CAP_CR_SUCCESS);
		rsp.status = FUNC2(L2CAP_CS_NO_INFO);
		FUNC4(FUNC3(sk)->conn, FUNC3(sk)->ident,
					L2CAP_CONN_RSP, sizeof(rsp), &rsp);

		FUNC6(sk);
		return 0;
	}

	FUNC6(sk);

	return FUNC1(iocb, sock, msg, len, flags);
}