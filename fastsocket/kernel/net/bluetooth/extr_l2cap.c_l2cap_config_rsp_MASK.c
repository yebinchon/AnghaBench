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
struct sock {int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_err; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_list; } ;
struct l2cap_conf_rsp {int /*<<< orphan*/  data; int /*<<< orphan*/  result; int /*<<< orphan*/  flags; int /*<<< orphan*/  scid; } ;
struct l2cap_conf_req {int dummy; } ;
struct l2cap_cmd_hdr {int len; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int conf_state; scalar_t__ fcs; scalar_t__ num_to_ack; scalar_t__ buffer_seq; scalar_t__ expected_tx_seq; int /*<<< orphan*/  num_conf_req; int /*<<< orphan*/  num_conf_rsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  BT_DISCONN ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int HZ ; 
 int L2CAP_CONF_INPUT_DONE ; 
 int /*<<< orphan*/  L2CAP_CONF_MAX_CONF_RSP ; 
 int L2CAP_CONF_NO_FCS_RECV ; 
 int L2CAP_CONF_OUTPUT_DONE ; 
 int /*<<< orphan*/  L2CAP_CONF_REQ ; 
#define  L2CAP_CONF_SUCCESS 129 
#define  L2CAP_CONF_UNACCEPT 128 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_FCS_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct sock* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_conn*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int,char*,int*) ; 
 TYPE_1__* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_conn*,struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int) ; 

__attribute__((used)) static inline int FUNC14(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
	struct l2cap_conf_rsp *rsp = (struct l2cap_conf_rsp *)data;
	u16 scid, flags, result;
	struct sock *sk;

	scid   = FUNC3(rsp->scid);
	flags  = FUNC3(rsp->flags);
	result = FUNC3(rsp->result);

	FUNC0("scid 0x%4.4x flags 0x%2.2x result 0x%2.2x",
			scid, flags, result);

	sk = FUNC7(&conn->chan_list, scid);
	if (!sk)
		return 0;

	switch (result) {
	case L2CAP_CONF_SUCCESS:
		break;

	case L2CAP_CONF_UNACCEPT:
		if (FUNC10(sk)->num_conf_rsp <= L2CAP_CONF_MAX_CONF_RSP) {
			int len = cmd->len - sizeof(*rsp);
			char req[64];

			if (len > sizeof(req) - sizeof(struct l2cap_conf_req)) {
				FUNC12(conn, sk);
				goto done;
			}

			/* throw out any old stored conf requests */
			result = L2CAP_CONF_SUCCESS;
			len = FUNC9(sk, rsp->data,
							len, req, &result);
			if (len < 0) {
				FUNC12(conn, sk);
				goto done;
			}

			FUNC11(conn, FUNC8(conn),
						L2CAP_CONF_REQ, len, req);
			FUNC10(sk)->num_conf_req++;
			if (result != L2CAP_CONF_SUCCESS)
				goto done;
			break;
		}

	default:
		sk->sk_state = BT_DISCONN;
		sk->sk_err = ECONNRESET;
		FUNC13(sk, HZ * 5);
		FUNC12(conn, sk);
		goto done;
	}

	if (flags & 0x01)
		goto done;

	FUNC10(sk)->conf_state |= L2CAP_CONF_INPUT_DONE;

	if (FUNC10(sk)->conf_state & L2CAP_CONF_OUTPUT_DONE) {
		if (!(FUNC10(sk)->conf_state & L2CAP_CONF_NO_FCS_RECV)
				|| FUNC10(sk)->fcs != L2CAP_FCS_NONE)
			FUNC10(sk)->fcs = L2CAP_FCS_CRC16;

		sk->sk_state = BT_CONNECTED;
		FUNC10(sk)->expected_tx_seq = 0;
		FUNC10(sk)->buffer_seq = 0;
		FUNC10(sk)->num_to_ack = 0;
		FUNC4(FUNC2(sk));
		FUNC4(FUNC1(sk));
		FUNC6(sk);
	}

done:
	FUNC5(sk);
	return 0;
}