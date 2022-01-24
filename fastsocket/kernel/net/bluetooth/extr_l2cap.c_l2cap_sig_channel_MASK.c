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
struct l2cap_cmd_rej {int /*<<< orphan*/  reason; } ;
typedef  struct l2cap_cmd_rej u8 ;
typedef  int u16 ;
struct sk_buff {int len; struct l2cap_cmd_rej* data; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int code; int /*<<< orphan*/  ident; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  rej ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int L2CAP_CMD_HDR_SIZE ; 
#define  L2CAP_COMMAND_REJ 138 
#define  L2CAP_CONF_REQ 137 
#define  L2CAP_CONF_RSP 136 
#define  L2CAP_CONN_REQ 135 
#define  L2CAP_CONN_RSP 134 
#define  L2CAP_DISCONN_REQ 133 
#define  L2CAP_DISCONN_RSP 132 
#define  L2CAP_ECHO_REQ 131 
#define  L2CAP_ECHO_RSP 130 
#define  L2CAP_INFO_REQ 129 
#define  L2CAP_INFO_RSP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC5 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int,struct l2cap_cmd_rej*) ; 
 int FUNC6 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC7 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC8 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC9 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC10 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC11 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int FUNC12 (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_conn*,int /*<<< orphan*/ ,int const,int,struct l2cap_cmd_rej*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*,int) ; 

__attribute__((used)) static inline void FUNC17(struct l2cap_conn *conn, struct sk_buff *skb)
{
	u8 *data = skb->data;
	int len = skb->len;
	struct l2cap_cmd_hdr cmd;
	int err = 0;

	FUNC13(conn, skb);

	while (len >= L2CAP_CMD_HDR_SIZE) {
		u16 cmd_len;
		FUNC16(&cmd, data, L2CAP_CMD_HDR_SIZE);
		data += L2CAP_CMD_HDR_SIZE;
		len  -= L2CAP_CMD_HDR_SIZE;

		cmd_len = FUNC15(cmd.len);

		FUNC0("code 0x%2.2x len %d id 0x%2.2x", cmd.code, cmd_len, cmd.ident);

		if (cmd_len > len || !cmd.ident) {
			FUNC0("corrupted command");
			break;
		}

		switch (cmd.code) {
		case L2CAP_COMMAND_REJ:
			FUNC4(conn, &cmd, data);
			break;

		case L2CAP_CONN_REQ:
			err = FUNC7(conn, &cmd, data);
			break;

		case L2CAP_CONN_RSP:
			err = FUNC8(conn, &cmd, data);
			break;

		case L2CAP_CONF_REQ:
			err = FUNC5(conn, &cmd, cmd_len, data);
			break;

		case L2CAP_CONF_RSP:
			err = FUNC6(conn, &cmd, data);
			break;

		case L2CAP_DISCONN_REQ:
			err = FUNC9(conn, &cmd, data);
			break;

		case L2CAP_DISCONN_RSP:
			err = FUNC10(conn, &cmd, data);
			break;

		case L2CAP_ECHO_REQ:
			FUNC14(conn, cmd.ident, L2CAP_ECHO_RSP, cmd_len, data);
			break;

		case L2CAP_ECHO_RSP:
			break;

		case L2CAP_INFO_REQ:
			err = FUNC11(conn, &cmd, data);
			break;

		case L2CAP_INFO_RSP:
			err = FUNC12(conn, &cmd, data);
			break;

		default:
			FUNC1("Unknown signaling command 0x%2.2x", cmd.code);
			err = -EINVAL;
			break;
		}

		if (err) {
			struct l2cap_cmd_rej rej;
			FUNC0("error %d", err);

			/* FIXME: Map err to a valid reason */
			rej.reason = FUNC2(0);
			FUNC14(conn, cmd.ident, L2CAP_COMMAND_REJ, sizeof(rej), &rej);
		}

		data += cmd_len;
		len  -= cmd_len;
	}

	FUNC3(skb);
}