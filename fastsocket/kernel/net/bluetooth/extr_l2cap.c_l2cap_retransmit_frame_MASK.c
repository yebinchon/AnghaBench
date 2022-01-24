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
typedef  int u8 ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_pinfo {scalar_t__ remote_max_tx; int req_seq; scalar_t__ fcs; int /*<<< orphan*/  conn; } ;
struct TYPE_2__ {int tx_seq; scalar_t__ retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int L2CAP_CTRL_REQSEQ_SHIFT ; 
 int L2CAP_CTRL_TXSEQ_SHIFT ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 
 struct l2cap_pinfo* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, u8 tx_seq)
{
	struct l2cap_pinfo *pi = FUNC5(sk);
	struct sk_buff *skb, *tx_skb;
	u16 control, fcs;
	int err;

	skb = FUNC9(FUNC0(sk));
	do {
		if (FUNC1(skb)->tx_seq != tx_seq) {
			if (FUNC10(FUNC0(sk), skb))
				break;
			skb = FUNC11(FUNC0(sk), skb);
			continue;
		}

		if (pi->remote_max_tx &&
				FUNC1(skb)->retries == pi->remote_max_tx) {
			FUNC6(pi->conn, sk);
			break;
		}

		tx_skb = FUNC8(skb, GFP_ATOMIC);
		FUNC1(skb)->retries++;
		control = FUNC3(tx_skb->data + L2CAP_HDR_SIZE);
		control |= (pi->req_seq << L2CAP_CTRL_REQSEQ_SHIFT)
				| (tx_seq << L2CAP_CTRL_TXSEQ_SHIFT);
		FUNC7(control, tx_skb->data + L2CAP_HDR_SIZE);

		if (FUNC5(sk)->fcs == L2CAP_FCS_CRC16) {
			fcs = FUNC2(0, (u8 *)tx_skb->data, tx_skb->len - 2);
			FUNC7(fcs, tx_skb->data + tx_skb->len - 2);
		}

		err = FUNC4(sk, tx_skb);
		if (err < 0) {
			FUNC6(pi->conn, sk);
			return err;
		}
		break;
	} while(1);
	return 0;
}