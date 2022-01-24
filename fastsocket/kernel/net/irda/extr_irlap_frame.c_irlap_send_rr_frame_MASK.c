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
struct rr_frame {int control; int /*<<< orphan*/  caddr; } ;
struct irlap_cb {int vr; int /*<<< orphan*/  caddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FRAME ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PF_BIT ; 
 int RR ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irlap_cb*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

void FUNC3(struct irlap_cb *self, int command)
{
	struct sk_buff *tx_skb;
	struct rr_frame *frame;

	tx_skb = FUNC0(sizeof(struct rr_frame), GFP_ATOMIC);
	if (!tx_skb)
		return;

	frame = (struct rr_frame *)FUNC2(tx_skb, 2);

	frame->caddr = self->caddr;
	frame->caddr |= (command) ? CMD_FRAME : 0;

	frame->control = RR | PF_BIT | (self->vr << 5);

	FUNC1(self, tx_skb);
}