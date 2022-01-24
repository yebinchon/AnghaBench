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
struct sock {int /*<<< orphan*/  sk_ack_backlog; TYPE_1__* sk_prot; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_accept_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  orphan_count; int /*<<< orphan*/  (* disconnect ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct request_sock* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC18(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC4(sk);
	struct request_sock *acc_req;
	struct request_sock *req;

	FUNC5(sk);

	/* make all the listen_opt local to us */
	acc_req = FUNC11(&icsk->icsk_accept_queue);

	/* Following specs, it would be better either to send FIN
	 * (and enter FIN-WAIT-1, it is normal close)
	 * or to send active reset (abort).
	 * Certainly, it is pretty dangerous while synflood, but it is
	 * bad justification for our negligence 8)
	 * To be honest, we are not able to make either
	 * of the variants now.			--ANK
	 */
	FUNC10(&icsk->icsk_accept_queue);

	while ((req = acc_req) != NULL) {
		struct sock *child = req->sk;

		acc_req = req->dl_next;

		FUNC7();
		FUNC2(child);
		FUNC0(FUNC15(child));
		FUNC13(child);

		sk->sk_prot->disconnect(child, O_NONBLOCK);

		FUNC14(child);

		FUNC9(sk->sk_prot->orphan_count);

		FUNC6(child);

		FUNC3(child);
		FUNC8();
		FUNC16(child);

		FUNC12(sk);
		FUNC1(req);
	}
	FUNC0(sk->sk_ack_backlog);
}