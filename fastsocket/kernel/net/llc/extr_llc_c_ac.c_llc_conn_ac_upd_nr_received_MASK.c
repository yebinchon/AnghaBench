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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ expire; int /*<<< orphan*/  timer; } ;
struct llc_sock {scalar_t__ failed_data_req; TYPE_2__ ack_timer; scalar_t__ retry_count; TYPE_1__* dev; int /*<<< orphan*/  last_nr; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 int FUNC3 (struct sock*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int*) ; 
 struct llc_pdu_sn* FUNC5 (struct sk_buff*) ; 
 struct llc_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	int acked;
	u16 unacked = 0;
	struct llc_pdu_sn *pdu = FUNC5(skb);
	struct llc_sock *llc = FUNC6(sk);

	llc->last_nr = FUNC0(pdu);
	acked = FUNC3(sk, llc->last_nr, &unacked);
	/* On loopback we don't queue I frames in unack_pdu_q queue. */
	if (acked > 0 || (llc->dev->flags & IFF_LOOPBACK)) {
		llc->retry_count = 0;
		FUNC1(&llc->ack_timer.timer);
		if (llc->failed_data_req) {
			/* already, we did not accept data from upper layer
			 * (tx_window full or unacceptable state). Now, we
			 * can send data and must inform to upper layer.
			 */
			llc->failed_data_req = 0;
			FUNC2(sk, skb);
		}
		if (unacked)
			FUNC7(&llc->ack_timer.timer,
				  jiffies + llc->ack_timer.expire);
	} else if (llc->failed_data_req) {
		u8 f_bit;

		FUNC4(skb, &f_bit);
		if (f_bit == 1) {
			llc->failed_data_req = 0;
			FUNC2(sk, skb);
		}
	}
	return 0;
}