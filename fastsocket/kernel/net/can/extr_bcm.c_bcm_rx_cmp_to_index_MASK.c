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
struct can_frame {int can_dlc; } ;
struct bcm_op {int flags; struct can_frame const* last_frames; struct can_frame const* frames; } ;

/* Variables and functions */
 int BCM_CAN_DLC_MASK ; 
 int FUNC0 (struct can_frame const*) ; 
 int RX_CHECK_DLC ; 
 int RX_RECV ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_op*,struct can_frame const*,struct can_frame const*) ; 

__attribute__((used)) static void FUNC2(struct bcm_op *op, unsigned int index,
				const struct can_frame *rxdata)
{
	/*
	 * no one uses the MSBs of can_dlc for comparation,
	 * so we use it here to detect the first time of reception
	 */

	if (!(op->last_frames[index].can_dlc & RX_RECV)) {
		/* received data for the first time => send update to user */
		FUNC1(op, &op->last_frames[index], rxdata);
		return;
	}

	/* do a real check in can_frame data section */

	if ((FUNC0(&op->frames[index]) & FUNC0(rxdata)) !=
	    (FUNC0(&op->frames[index]) & FUNC0(&op->last_frames[index]))) {
		FUNC1(op, &op->last_frames[index], rxdata);
		return;
	}

	if (op->flags & RX_CHECK_DLC) {
		/* do a real check in can_frame dlc */
		if (rxdata->can_dlc != (op->last_frames[index].can_dlc &
					BCM_CAN_DLC_MASK)) {
			FUNC1(op, &op->last_frames[index],
					       rxdata);
			return;
		}
	}
}