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
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct l2cap_pinfo {int conn_state; struct sk_buff* sdu; int /*<<< orphan*/  sdu_len; int /*<<< orphan*/  partial_sdu_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int L2CAP_CONN_SAR_SDU ; 
 int L2CAP_CTRL_SAR ; 
#define  L2CAP_SDU_CONTINUE 131 
#define  L2CAP_SDU_END 130 
#define  L2CAP_SDU_START 129 
#define  L2CAP_SDU_UNSEGMENTED 128 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct l2cap_pinfo* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *skb, u16 control)
{
	struct l2cap_pinfo *pi = FUNC3(sk);
	struct sk_buff *_skb;
	int err = -EINVAL;

	switch (control & L2CAP_CTRL_SAR) {
	case L2CAP_SDU_UNSEGMENTED:
		if (pi->conn_state & L2CAP_CONN_SAR_SDU) {
			FUNC2(pi->sdu);
			break;
		}

		err = FUNC8(sk, skb);
		if (!err)
			return 0;

		break;

	case L2CAP_SDU_START:
		if (pi->conn_state & L2CAP_CONN_SAR_SDU) {
			FUNC2(pi->sdu);
			break;
		}

		pi->sdu_len = FUNC1(skb->data);
		FUNC6(skb, 2);

		pi->sdu = FUNC0(pi->sdu_len, GFP_ATOMIC);
		if (!pi->sdu) {
			err = -ENOMEM;
			break;
		}

		FUNC4(FUNC7(pi->sdu, skb->len), skb->data, skb->len);

		pi->conn_state |= L2CAP_CONN_SAR_SDU;
		pi->partial_sdu_len = skb->len;
		err = 0;
		break;

	case L2CAP_SDU_CONTINUE:
		if (!(pi->conn_state & L2CAP_CONN_SAR_SDU))
			break;

		FUNC4(FUNC7(pi->sdu, skb->len), skb->data, skb->len);

		pi->partial_sdu_len += skb->len;
		if (pi->partial_sdu_len > pi->sdu_len)
			FUNC2(pi->sdu);
		else
			err = 0;

		break;

	case L2CAP_SDU_END:
		if (!(pi->conn_state & L2CAP_CONN_SAR_SDU))
			break;

		FUNC4(FUNC7(pi->sdu, skb->len), skb->data, skb->len);

		pi->conn_state &= ~L2CAP_CONN_SAR_SDU;
		pi->partial_sdu_len += skb->len;

		if (pi->partial_sdu_len == pi->sdu_len) {
			_skb = FUNC5(pi->sdu, GFP_ATOMIC);
			err = FUNC8(sk, _skb);
			if (err < 0)
				FUNC2(_skb);
		}
		FUNC2(pi->sdu);
		err = 0;

		break;
	}

	FUNC2(skb);
	return err;
}