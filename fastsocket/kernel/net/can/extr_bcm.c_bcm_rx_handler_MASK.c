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
struct sk_buff {TYPE_1__* dev; int /*<<< orphan*/  tstamp; scalar_t__ data; } ;
struct can_frame {scalar_t__ can_id; } ;
struct bcm_op {scalar_t__ can_id; int flags; int nframes; struct can_frame const* frames; int /*<<< orphan*/ * last_frames; int /*<<< orphan*/  frames_abs; int /*<<< orphan*/  rx_ifindex; int /*<<< orphan*/  rx_stamp; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int FUNC0 (struct can_frame const*) ; 
 int RX_FILTER_ID ; 
 int RX_RTR_FRAME ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_op*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_op*,unsigned int,struct can_frame const*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_op*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_op*,int /*<<< orphan*/ *,struct can_frame const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, void *data)
{
	struct bcm_op *op = (struct bcm_op *)data;
	const struct can_frame *rxframe = (struct can_frame *)skb->data;
	unsigned int i;

	/* disable timeout */
	FUNC5(&op->timer);

	if (op->can_id != rxframe->can_id)
		return;

	/* save rx timestamp */
	op->rx_stamp = skb->tstamp;
	/* save originator for recvfrom() */
	op->rx_ifindex = skb->dev->ifindex;
	/* update statistics */
	op->frames_abs++;

	if (op->flags & RX_RTR_FRAME) {
		/* send reply for RTR-request (placed in op->frames[0]) */
		FUNC1(op);
		return;
	}

	if (op->flags & RX_FILTER_ID) {
		/* the easiest case */
		FUNC4(op, &op->last_frames[0], rxframe);
		goto rx_starttimer;
	}

	if (op->nframes == 1) {
		/* simple compare with index 0 */
		FUNC2(op, 0, rxframe);
		goto rx_starttimer;
	}

	if (op->nframes > 1) {
		/*
		 * multiplex compare
		 *
		 * find the first multiplex mask that fits.
		 * Remark: The MUX-mask is stored in index 0
		 */

		for (i = 1; i < op->nframes; i++) {
			if ((FUNC0(&op->frames[0]) & FUNC0(rxframe)) ==
			    (FUNC0(&op->frames[0]) &
			     FUNC0(&op->frames[i]))) {
				FUNC2(op, i, rxframe);
				break;
			}
		}
	}

rx_starttimer:
	FUNC3(op);
}