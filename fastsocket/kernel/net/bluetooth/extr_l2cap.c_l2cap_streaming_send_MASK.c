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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sock {struct sk_buff* sk_send_head; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_pinfo {int next_tx_seq; scalar_t__ fcs; int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int L2CAP_CTRL_TXSEQ_SHIFT ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 
 struct l2cap_pinfo* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sock *sk)
{
	struct sk_buff *skb, *tx_skb;
	struct l2cap_pinfo *pi = FUNC5(sk);
	u16 control, fcs;
	int err;

	while ((skb = sk->sk_send_head)) {
		tx_skb = FUNC8(skb, GFP_ATOMIC);

		control = FUNC2(tx_skb->data + L2CAP_HDR_SIZE);
		control |= pi->next_tx_seq << L2CAP_CTRL_TXSEQ_SHIFT;
		FUNC7(control, tx_skb->data + L2CAP_HDR_SIZE);

		if (FUNC5(sk)->fcs == L2CAP_FCS_CRC16) {
			fcs = FUNC1(0, (u8 *)tx_skb->data, tx_skb->len - 2);
			FUNC7(fcs, tx_skb->data + tx_skb->len - 2);
		}

		err = FUNC4(sk, tx_skb);
		if (err < 0) {
			FUNC6(pi->conn, sk);
			return err;
		}

		pi->next_tx_seq = (pi->next_tx_seq + 1) % 64;

		if (FUNC10(FUNC0(sk), skb))
			sk->sk_send_head = NULL;
		else
			sk->sk_send_head = FUNC11(FUNC0(sk), skb);

		skb = FUNC9(FUNC0(sk));
		FUNC3(skb);
	}
	return 0;
}