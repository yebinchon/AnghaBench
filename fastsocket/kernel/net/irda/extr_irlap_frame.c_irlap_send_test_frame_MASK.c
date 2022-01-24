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
struct test_frame {int control; scalar_t__ caddr; void* daddr; void* saddr; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct irlap_cb {int /*<<< orphan*/  qos_tx; int /*<<< orphan*/  saddr; } ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ CBROADCAST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LAP_ADDR_HEADER ; 
 int LAP_CTRL_HEADER ; 
 int PF_BIT ; 
 int TEST_RSP ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irlap_cb*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct irlap_cb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC5 (struct sk_buff*,int) ; 

void FUNC6(struct irlap_cb *self, __u8 caddr, __u32 daddr,
			   struct sk_buff *cmd)
{
	struct sk_buff *tx_skb;
	struct test_frame *frame;
	__u8 *info;

	tx_skb = FUNC0(cmd->len + sizeof(struct test_frame), GFP_ATOMIC);
	if (!tx_skb)
		return;

	/* Broadcast frames must include saddr and daddr fields */
	if (caddr == CBROADCAST) {
		frame = (struct test_frame *)
			FUNC5(tx_skb, sizeof(struct test_frame));

		/* Insert the swapped addresses */
		frame->saddr = FUNC1(self->saddr);
		frame->daddr = FUNC1(daddr);
	} else
		frame = (struct test_frame *) FUNC5(tx_skb, LAP_ADDR_HEADER + LAP_CTRL_HEADER);

	frame->caddr = caddr;
	frame->control = TEST_RSP | PF_BIT;

	/* Copy info */
	info = FUNC5(tx_skb, cmd->len);
	FUNC4(info, cmd->data, cmd->len);

	/* Return to sender */
	FUNC3(self, &self->qos_tx);
	FUNC2(self, tx_skb);
}