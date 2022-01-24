#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct can_frame {int can_dlc; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv64; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv64; } ;
struct bcm_op {TYPE_1__ kt_lastmsg; TYPE_3__ kt_ival2; int /*<<< orphan*/  thrtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFSIZ ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int RX_RECV ; 
 int RX_THR ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_op*,struct can_frame*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_3__) ; 
 TYPE_1__ FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_3__) ; 
 scalar_t__ FUNC6 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (struct can_frame*,struct can_frame const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct bcm_op *op,
				   struct can_frame *lastdata,
				   const struct can_frame *rxdata)
{
	FUNC7(lastdata, rxdata, CFSIZ);

	/* mark as used and throttled by default */
	lastdata->can_dlc |= (RX_RECV|RX_THR);

	/* throtteling mode inactive ? */
	if (!op->kt_ival2.tv64) {
		/* send RX_CHANGED to the user immediately */
		FUNC0(op, lastdata);
		return;
	}

	/* with active throttling timer we are just done here */
	if (FUNC1(&op->thrtimer))
		return;

	/* first receiption with enabled throttling mode */
	if (!op->kt_lastmsg.tv64)
		goto rx_changed_settime;

	/* got a second frame inside a potential throttle period? */
	if (FUNC6(FUNC4(), op->kt_lastmsg) <
	    FUNC5(op->kt_ival2)) {
		/* do not send the saved data - only start throttle timer */
		FUNC2(&op->thrtimer,
			      FUNC3(op->kt_lastmsg, op->kt_ival2),
			      HRTIMER_MODE_ABS);
		return;
	}

	/* the gap was that big, that throttling was not needed here */
rx_changed_settime:
	FUNC0(op, lastdata);
	op->kt_lastmsg = FUNC4();
}