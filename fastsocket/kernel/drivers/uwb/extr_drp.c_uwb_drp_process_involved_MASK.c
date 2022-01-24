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
struct uwb_rsv {scalar_t__ state; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ UWB_RSV_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,struct uwb_rsv*,struct uwb_dev*,struct uwb_ie_drp*,struct uwb_rc_evt_drp*) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_rc*,struct uwb_rsv*,struct uwb_ie_drp*,struct uwb_rc_evt_drp*) ; 
 scalar_t__ FUNC2 (struct uwb_ie_drp*) ; 
 struct uwb_rsv* FUNC3 (struct uwb_rc*,struct uwb_dev*,struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rsv*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uwb_rc *rc, struct uwb_dev *src,
				     struct uwb_rc_evt_drp *drp_evt,
				     struct uwb_ie_drp *drp_ie)
{
	struct uwb_rsv *rsv;

	rsv = FUNC3(rc, src, drp_ie);
	if (!rsv) {
		/*
		 * No reservation? It's either for a recently
		 * terminated reservation; or the DRP IE couldn't be
		 * processed (e.g., an invalid IE or out of memory).
		 */
		return;
	}
	
	/*
	 * Do nothing with DRP IEs for reservations that have been
	 * terminated.
	 */
	if (rsv->state == UWB_RSV_STATE_NONE) {
		FUNC4(rsv, UWB_RSV_STATE_NONE);
		return;
	}
			
	if (FUNC2(drp_ie))
		FUNC1(rc, rsv, drp_ie, drp_evt);
	else
		FUNC0(rc, rsv, src, drp_ie, drp_evt);
	
}