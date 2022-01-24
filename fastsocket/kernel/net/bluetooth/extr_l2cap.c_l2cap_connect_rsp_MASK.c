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
typedef  int u16 ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct l2cap_conn_rsp {int /*<<< orphan*/  status; int /*<<< orphan*/  result; int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_list; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct TYPE_2__ {int dcid; int /*<<< orphan*/  conf_state; int /*<<< orphan*/  num_conf_req; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  L2CAP_CONF_CONNECT_PEND ; 
 int /*<<< orphan*/  L2CAP_CONF_REQ ; 
 int /*<<< orphan*/  L2CAP_CONF_REQ_SENT ; 
#define  L2CAP_CR_PEND 129 
#define  L2CAP_CR_SUCCESS 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC10(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
	struct l2cap_conn_rsp *rsp = (struct l2cap_conn_rsp *) data;
	u16 scid, dcid, result, status;
	struct sock *sk;
	u8 req[128];

	scid   = FUNC1(rsp->scid);
	dcid   = FUNC1(rsp->dcid);
	result = FUNC1(rsp->result);
	status = FUNC1(rsp->status);

	FUNC0("dcid 0x%4.4x scid 0x%4.4x result 0x%2.2x status 0x%2.2x", dcid, scid, result, status);

	if (scid) {
		sk = FUNC6(&conn->chan_list, scid);
		if (!sk)
			return 0;
	} else {
		sk = FUNC5(&conn->chan_list, cmd->ident);
		if (!sk)
			return 0;
	}

	switch (result) {
	case L2CAP_CR_SUCCESS:
		sk->sk_state = BT_CONFIG;
		FUNC8(sk)->ident = 0;
		FUNC8(sk)->dcid = dcid;
		FUNC8(sk)->conf_state |= L2CAP_CONF_REQ_SENT;

		FUNC8(sk)->conf_state &= ~L2CAP_CONF_CONNECT_PEND;

		FUNC9(conn, FUNC7(conn), L2CAP_CONF_REQ,
					FUNC3(sk, req), req);
		FUNC8(sk)->num_conf_req++;
		break;

	case L2CAP_CR_PEND:
		FUNC8(sk)->conf_state |= L2CAP_CONF_CONNECT_PEND;
		break;

	default:
		FUNC4(sk, ECONNREFUSED);
		break;
	}

	FUNC2(sk);
	return 0;
}