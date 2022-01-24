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
typedef  int /*<<< orphan*/  u8 ;
struct sock {scalar_t__ sk_state; } ;
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; int /*<<< orphan*/  psm; } ;
struct l2cap_conn_req {void* status; void* result; void* dcid; void* scid; int /*<<< orphan*/  psm; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int conf_state; int /*<<< orphan*/  ident; int /*<<< orphan*/  scid; int /*<<< orphan*/  dcid; int /*<<< orphan*/  psm; struct sock* next_c; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECT2 ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 scalar_t__ BT_DISCONN ; 
 int HZ ; 
 int L2CAP_CONF_CONNECT_PEND ; 
 int /*<<< orphan*/  L2CAP_CONN_REQ ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP ; 
 int /*<<< orphan*/  L2CAP_CR_SEC_BLOCK ; 
 int /*<<< orphan*/  L2CAP_CR_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_CS_NO_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_conn_rsp*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct hci_conn *hcon, u8 status, u8 encrypt)
{
	struct l2cap_chan_list *l;
	struct l2cap_conn *conn = hcon->l2cap_data;
	struct sock *sk;

	if (!conn)
		return 0;

	l = &conn->chan_list;

	FUNC0("conn %p", conn);

	FUNC10(&l->lock);

	for (sk = l->head; sk; sk = FUNC6(sk)->next_c) {
		FUNC1(sk);

		if (FUNC6(sk)->conf_state & L2CAP_CONF_CONNECT_PEND) {
			FUNC2(sk);
			continue;
		}

		if (!status && (sk->sk_state == BT_CONNECTED ||
						sk->sk_state == BT_CONFIG)) {
			FUNC4(sk, encrypt);
			FUNC2(sk);
			continue;
		}

		if (sk->sk_state == BT_CONNECT) {
			if (!status) {
				struct l2cap_conn_req req;
				req.scid = FUNC3(FUNC6(sk)->scid);
				req.psm  = FUNC6(sk)->psm;

				FUNC6(sk)->ident = FUNC5(conn);

				FUNC7(conn, FUNC6(sk)->ident,
					L2CAP_CONN_REQ, sizeof(req), &req);
			} else {
				FUNC8(sk);
				FUNC9(sk, HZ / 10);
			}
		} else if (sk->sk_state == BT_CONNECT2) {
			struct l2cap_conn_rsp rsp;
			__u16 result;

			if (!status) {
				sk->sk_state = BT_CONFIG;
				result = L2CAP_CR_SUCCESS;
			} else {
				sk->sk_state = BT_DISCONN;
				FUNC9(sk, HZ / 10);
				result = L2CAP_CR_SEC_BLOCK;
			}

			rsp.scid   = FUNC3(FUNC6(sk)->dcid);
			rsp.dcid   = FUNC3(FUNC6(sk)->scid);
			rsp.result = FUNC3(result);
			rsp.status = FUNC3(L2CAP_CS_NO_INFO);
			FUNC7(conn, FUNC6(sk)->ident,
					L2CAP_CONN_RSP, sizeof(rsp), &rsp);
		}

		FUNC2(sk);
	}

	FUNC11(&l->lock);

	return 0;
}