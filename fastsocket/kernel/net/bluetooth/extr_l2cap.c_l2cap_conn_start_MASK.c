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
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;} ;
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; int /*<<< orphan*/  psm; } ;
struct l2cap_conn_req {void* status; void* result; void* dcid; void* scid; int /*<<< orphan*/  psm; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_4__ {struct sock* parent; scalar_t__ defer_setup; } ;
struct TYPE_3__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  scid; int /*<<< orphan*/  dcid; int /*<<< orphan*/  psm; struct sock* next_c; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 int /*<<< orphan*/  L2CAP_CONN_REQ ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP ; 
 int /*<<< orphan*/  L2CAP_CR_PEND ; 
 int /*<<< orphan*/  L2CAP_CR_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_CS_AUTHEN_PEND ; 
 int /*<<< orphan*/  L2CAP_CS_AUTHOR_PEND ; 
 int /*<<< orphan*/  L2CAP_CS_NO_INFO ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_conn_rsp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct l2cap_conn *conn)
{
	struct l2cap_chan_list *l = &conn->chan_list;
	struct sock *sk;

	FUNC0("conn %p", conn);

	FUNC9(&l->lock);

	for (sk = l->head; sk; sk = FUNC7(sk)->next_c) {
		FUNC1(sk);

		if (sk->sk_type != SOCK_SEQPACKET) {
			FUNC2(sk);
			continue;
		}

		if (sk->sk_state == BT_CONNECT) {
			if (FUNC5(sk)) {
				struct l2cap_conn_req req;
				req.scid = FUNC4(FUNC7(sk)->scid);
				req.psm  = FUNC7(sk)->psm;

				FUNC7(sk)->ident = FUNC6(conn);

				FUNC8(conn, FUNC7(sk)->ident,
					L2CAP_CONN_REQ, sizeof(req), &req);
			}
		} else if (sk->sk_state == BT_CONNECT2) {
			struct l2cap_conn_rsp rsp;
			rsp.scid = FUNC4(FUNC7(sk)->dcid);
			rsp.dcid = FUNC4(FUNC7(sk)->scid);

			if (FUNC5(sk)) {
				if (FUNC3(sk)->defer_setup) {
					struct sock *parent = FUNC3(sk)->parent;
					rsp.result = FUNC4(L2CAP_CR_PEND);
					rsp.status = FUNC4(L2CAP_CS_AUTHOR_PEND);
					parent->sk_data_ready(parent, 0);

				} else {
					sk->sk_state = BT_CONFIG;
					rsp.result = FUNC4(L2CAP_CR_SUCCESS);
					rsp.status = FUNC4(L2CAP_CS_NO_INFO);
				}
			} else {
				rsp.result = FUNC4(L2CAP_CR_PEND);
				rsp.status = FUNC4(L2CAP_CS_AUTHEN_PEND);
			}

			FUNC8(conn, FUNC7(sk)->ident,
					L2CAP_CONN_RSP, sizeof(rsp), &rsp);
		}

		FUNC2(sk);
	}

	FUNC10(&l->lock);
}