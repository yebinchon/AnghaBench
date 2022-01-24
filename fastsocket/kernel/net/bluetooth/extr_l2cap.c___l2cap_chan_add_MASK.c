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
struct sock {scalar_t__ sk_type; } ;
struct l2cap_chan_list {int dummy; } ;
struct l2cap_conn {int disc_reason; struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {void* omtu; void* dcid; void* scid; struct l2cap_conn* conn; int /*<<< orphan*/  psm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,int /*<<< orphan*/ ,void*) ; 
 void* L2CAP_CID_CONN_LESS ; 
 void* L2CAP_CID_SIGNALING ; 
 void* L2CAP_DEFAULT_MTU ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan_list*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sock*) ; 
 void* FUNC3 (struct l2cap_chan_list*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct l2cap_conn *conn, struct sock *sk, struct sock *parent)
{
	struct l2cap_chan_list *l = &conn->chan_list;

	FUNC0("conn %p, psm 0x%2.2x, dcid 0x%4.4x", conn,
			FUNC4(sk)->psm, FUNC4(sk)->dcid);

	conn->disc_reason = 0x13;

	FUNC4(sk)->conn = conn;

	if (sk->sk_type == SOCK_SEQPACKET) {
		/* Alloc CID for connection-oriented socket */
		FUNC4(sk)->scid = FUNC3(l);
	} else if (sk->sk_type == SOCK_DGRAM) {
		/* Connectionless socket */
		FUNC4(sk)->scid = L2CAP_CID_CONN_LESS;
		FUNC4(sk)->dcid = L2CAP_CID_CONN_LESS;
		FUNC4(sk)->omtu = L2CAP_DEFAULT_MTU;
	} else {
		/* Raw socket can send/recv signalling messages only */
		FUNC4(sk)->scid = L2CAP_CID_SIGNALING;
		FUNC4(sk)->dcid = L2CAP_CID_SIGNALING;
		FUNC4(sk)->omtu = L2CAP_DEFAULT_MTU;
	}

	FUNC1(l, sk);

	if (parent)
		FUNC2(parent, sk);
}