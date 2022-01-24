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
struct irlap_cb {int vs; int va; int /*<<< orphan*/  wx_list; scalar_t__ window_size; scalar_t__ window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct irlap_cb *self, int nr)
{
	struct sk_buff *skb = NULL;
	int count = 0;

	/*
	 * Remove all the ack-ed frames from the window queue.
	 */

	/*
	 *  Optimize for the common case. It is most likely that the receiver
	 *  will acknowledge all the frames we have sent! So in that case we
	 *  delete all frames stored in window.
	 */
	if (nr == self->vs) {
		while ((skb = FUNC1(&self->wx_list)) != NULL) {
			FUNC0(skb);
		}
		/* The last acked frame is the next to send minus one */
		self->va = nr - 1;
	} else {
		/* Remove all acknowledged frames in current window */
		while ((FUNC2(&self->wx_list) != NULL) &&
		       (((self->va+1) % 8) != nr))
		{
			skb = FUNC1(&self->wx_list);
			FUNC0(skb);

			self->va = (self->va + 1) % 8;
			count++;
		}
	}

	/* Advance window */
	self->window = self->window_size - FUNC3(&self->wx_list);
}