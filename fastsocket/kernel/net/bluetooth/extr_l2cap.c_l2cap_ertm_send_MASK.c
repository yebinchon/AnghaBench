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
struct sock {struct sk_buff* sk_send_head; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_pinfo {int conn_state; scalar_t__ remote_max_tx; int req_seq; int next_tx_seq; scalar_t__ fcs; int /*<<< orphan*/  unacked_frames; int /*<<< orphan*/  conn; } ;
struct TYPE_2__ {scalar_t__ retries; int tx_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int L2CAP_CONN_REMOTE_BUSY ; 
 int L2CAP_CONN_WAIT_F ; 
 int L2CAP_CTRL_REQSEQ_SHIFT ; 
 int L2CAP_CTRL_TXSEQ_SHIFT ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (struct sock*,struct sk_buff*) ; 
 struct l2cap_pinfo* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk)
{
	struct sk_buff *skb, *tx_skb;
	struct l2cap_pinfo *pi = FUNC6(sk);
	u16 control, fcs;
	int err;

	if (pi->conn_state & L2CAP_CONN_WAIT_F)
		return 0;

	while ((skb = sk->sk_send_head) && (!FUNC8(sk))
			&& !(pi->conn_state & L2CAP_CONN_REMOTE_BUSY)) {
		tx_skb = FUNC10(skb, GFP_ATOMIC);

		if (pi->remote_max_tx &&
				FUNC2(skb)->retries == pi->remote_max_tx) {
			FUNC7(pi->conn, sk);
			break;
		}

		FUNC2(skb)->retries++;

		control = FUNC4(tx_skb->data + L2CAP_HDR_SIZE);
		control |= (pi->req_seq << L2CAP_CTRL_REQSEQ_SHIFT)
				| (pi->next_tx_seq << L2CAP_CTRL_TXSEQ_SHIFT);
		FUNC9(control, tx_skb->data + L2CAP_HDR_SIZE);


		if (FUNC6(sk)->fcs == L2CAP_FCS_CRC16) {
			fcs = FUNC3(0, (u8 *)skb->data, tx_skb->len - 2);
			FUNC9(fcs, skb->data + tx_skb->len - 2);
		}

		err = FUNC5(sk, tx_skb);
		if (err < 0) {
			FUNC7(pi->conn, sk);
			return err;
		}
		FUNC1();

		FUNC2(skb)->tx_seq = pi->next_tx_seq;
		pi->next_tx_seq = (pi->next_tx_seq + 1) % 64;

		pi->unacked_frames++;

		if (FUNC11(FUNC0(sk), skb))
			sk->sk_send_head = NULL;
		else
			sk->sk_send_head = FUNC12(FUNC0(sk), skb);
	}

	return 0;
}