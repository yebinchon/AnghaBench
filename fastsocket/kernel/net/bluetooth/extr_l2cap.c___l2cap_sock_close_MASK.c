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
struct sock {int sk_state; int /*<<< orphan*/  sk_type; int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_socket; } ;
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; } ;
struct l2cap_conn {int dummy; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {int /*<<< orphan*/  defer_setup; } ;
struct TYPE_3__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  scid; int /*<<< orphan*/  dcid; struct l2cap_conn* conn; } ;

/* Variables and functions */
#define  BT_CONFIG 133 
#define  BT_CONNECT 132 
#define  BT_CONNECT2 131 
#define  BT_CONNECTED 130 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int,int /*<<< orphan*/ ) ; 
#define  BT_DISCONN 129 
#define  BT_LISTEN 128 
 int /*<<< orphan*/  L2CAP_CONN_RSP ; 
 int /*<<< orphan*/  L2CAP_CR_BAD_PSM ; 
 int /*<<< orphan*/  L2CAP_CR_SEC_BLOCK ; 
 int /*<<< orphan*/  L2CAP_CS_NO_INFO ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_conn_rsp*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, int reason)
{
	FUNC0("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

	switch (sk->sk_state) {
	case BT_LISTEN:
		FUNC7(sk);
		break;

	case BT_CONNECTED:
	case BT_CONFIG:
		if (sk->sk_type == SOCK_SEQPACKET) {
			struct l2cap_conn *conn = FUNC4(sk)->conn;

			sk->sk_state = BT_DISCONN;
			FUNC8(sk, sk->sk_sndtimeo);
			FUNC6(conn, sk);
		} else
			FUNC3(sk, reason);
		break;

	case BT_CONNECT2:
		if (sk->sk_type == SOCK_SEQPACKET) {
			struct l2cap_conn *conn = FUNC4(sk)->conn;
			struct l2cap_conn_rsp rsp;
			__u16 result;

			if (FUNC1(sk)->defer_setup)
				result = L2CAP_CR_SEC_BLOCK;
			else
				result = L2CAP_CR_BAD_PSM;

			rsp.scid   = FUNC2(FUNC4(sk)->dcid);
			rsp.dcid   = FUNC2(FUNC4(sk)->scid);
			rsp.result = FUNC2(result);
			rsp.status = FUNC2(L2CAP_CS_NO_INFO);
			FUNC5(conn, FUNC4(sk)->ident,
					L2CAP_CONN_RSP, sizeof(rsp), &rsp);
		} else
			FUNC3(sk, reason);
		break;

	case BT_CONNECT:
	case BT_DISCONN:
		FUNC3(sk, reason);
		break;

	default:
		FUNC9(sk, SOCK_ZAPPED);
		break;
	}
}