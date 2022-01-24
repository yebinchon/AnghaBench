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
typedef  int u8 ;
typedef  int u16 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct l2cap_pinfo {int mode; int imtu; int expected_tx_seq; int /*<<< orphan*/  fcs; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_list; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int L2CAP_DEFAULT_MAX_PDU_SIZE ; 
 int /*<<< orphan*/  L2CAP_FCS_CRC16 ; 
#define  L2CAP_MODE_BASIC 130 
#define  L2CAP_MODE_ERTM 129 
#define  L2CAP_MODE_STREAMING 128 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_pinfo*,struct sk_buff*) ; 
 int FUNC9 (struct sock*,int,struct sk_buff*) ; 
 int FUNC10 (struct sock*,int,struct sk_buff*) ; 
 struct sock* FUNC11 (int /*<<< orphan*/ *,int) ; 
 struct l2cap_pinfo* FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC16(struct l2cap_conn *conn, u16 cid, struct sk_buff *skb)
{
	struct sock *sk;
	struct l2cap_pinfo *pi;
	u16 control, len;
	u8 tx_seq;
	int err;

	sk = FUNC11(&conn->chan_list, cid);
	if (!sk) {
		FUNC0("unknown cid 0x%4.4x", cid);
		goto drop;
	}

	pi = FUNC12(sk);

	FUNC0("sk %p, len %d", sk, skb->len);

	if (sk->sk_state != BT_CONNECTED)
		goto drop;

	switch (pi->mode) {
	case L2CAP_MODE_BASIC:
		/* If socket recv buffers overflows we drop data here
		 * which is *bad* because L2CAP has to be reliable.
		 * But we don't have any other choice. L2CAP doesn't
		 * provide flow control mechanism. */

		if (pi->imtu < skb->len)
			goto drop;

		if (!FUNC15(sk, skb))
			goto done;
		break;

	case L2CAP_MODE_ERTM:
		control = FUNC6(skb->data);
		FUNC14(skb, 2);
		len = skb->len;

		if (FUNC3(control))
			len -= 2;

		if (pi->fcs == L2CAP_FCS_CRC16)
			len -= 2;

		/*
		 * We can just drop the corrupted I-frame here.
		 * Receiver will miss it and start proper recovery
		 * procedures and ask retransmission.
		 */
		if (len > L2CAP_DEFAULT_MAX_PDU_SIZE)
			goto drop;

		if (FUNC8(pi, skb))
			goto drop;

		if (FUNC2(control))
			err = FUNC9(sk, control, skb);
		else
			err = FUNC10(sk, control, skb);

		if (!err)
			goto done;
		break;

	case L2CAP_MODE_STREAMING:
		control = FUNC6(skb->data);
		FUNC14(skb, 2);
		len = skb->len;

		if (FUNC3(control))
			len -= 2;

		if (pi->fcs == L2CAP_FCS_CRC16)
			len -= 2;

		if (len > L2CAP_DEFAULT_MAX_PDU_SIZE || FUNC4(control))
			goto drop;

		if (FUNC8(pi, skb))
			goto drop;

		tx_seq = FUNC1(control);

		if (pi->expected_tx_seq == tx_seq)
			pi->expected_tx_seq = (pi->expected_tx_seq + 1) % 64;
		else
			pi->expected_tx_seq = tx_seq + 1;

		err = FUNC13(sk, skb, control);

		goto done;

	default:
		FUNC0("sk %p: bad mode 0x%2.2x", sk, FUNC12(sk)->mode);
		break;
	}

drop:
	FUNC7(skb);

done:
	if (sk)
		FUNC5(sk);

	return 0;
}