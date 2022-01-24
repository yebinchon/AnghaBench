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
struct sk_buff {int dummy; } ;
struct rd_frame {int caddr; } ;
struct irlap_cb {int caddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PF_BIT ; 
 int RD_RSP ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irlap_cb*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

void FUNC3(struct irlap_cb *self)
{
	struct sk_buff *tx_skb;
	struct rd_frame *frame;

	tx_skb = FUNC0(sizeof(struct rd_frame), GFP_ATOMIC);
	if (!tx_skb)
		return;

	frame = (struct rd_frame *)FUNC2(tx_skb, 2);

	frame->caddr = self->caddr;
	frame->caddr = RD_RSP | PF_BIT;

	FUNC1(self, tx_skb);
}