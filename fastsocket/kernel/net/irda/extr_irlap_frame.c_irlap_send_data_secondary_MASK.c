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
struct sk_buff {int* data; } ;
struct irlap_cb {int vs; int window; int /*<<< orphan*/  caddr; int /*<<< orphan*/  ack_required; int /*<<< orphan*/  wx_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int I_FRAME ; 
 int /*<<< orphan*/  RSP_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct irlap_cb*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irlap_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC5(struct irlap_cb *self, struct sk_buff *skb)
{
	struct sk_buff *tx_skb = NULL;

	/* Is this reliable or unreliable data? */
	if (skb->data[1] == I_FRAME) {

		/*
		 *  Insert frame sequence number (Vs) in control field before
		 *  inserting into transmit window queue.
		 */
		skb->data[1] = I_FRAME | (self->vs << 1);

		/*
		 *  Insert frame in store, in case of retransmissions
		 *  Increase skb reference count, see irlap_do_event()
		 */
		FUNC3(skb);
		FUNC4(&self->wx_list, skb);

		tx_skb = FUNC2(skb, GFP_ATOMIC);
		if (tx_skb == NULL) {
			return;
		}

		self->vs = (self->vs + 1) % 8;
		self->ack_required = FALSE;
		self->window -= 1;

		FUNC0(self, tx_skb, RSP_FRAME);
	} else {
		FUNC1(self, FUNC3(skb), self->caddr, RSP_FRAME);
		self->window -= 1;
	}
}