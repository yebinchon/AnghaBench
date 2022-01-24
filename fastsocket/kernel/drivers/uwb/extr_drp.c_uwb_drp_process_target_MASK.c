#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv_move {TYPE_3__ companion_mas; } ;
struct TYPE_5__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {TYPE_2__ mas; int /*<<< orphan*/  rc; int /*<<< orphan*/  state; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct uwb_ie_drp {int dummy; } ;
typedef  enum uwb_drp_reason { ____Placeholder_uwb_drp_reason } uwb_drp_reason ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
#define  UWB_DRP_REASON_ACCEPTED 129 
#define  UWB_DRP_REASON_MODIFIED 128 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  UWB_RSV_STATE_T_ACCEPTED ; 
 int /*<<< orphan*/  UWB_RSV_STATE_T_CONFLICT ; 
 int /*<<< orphan*/  UWB_RSV_STATE_T_EXPANDING_ACCEPTED ; 
 int /*<<< orphan*/  UWB_RSV_STATE_T_RESIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc*,struct uwb_mas_bm*) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ; 
 int /*<<< orphan*/  FUNC8 (struct uwb_mas_bm*,struct uwb_ie_drp*) ; 
 int FUNC9 (struct uwb_ie_drp*) ; 
 int FUNC10 (struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC11 (struct uwb_rsv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct uwb_rc *rc, struct uwb_rsv *rsv,
				   struct uwb_ie_drp *drp_ie, struct uwb_rc_evt_drp *drp_evt)
{
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_rsv_move *mv = &rsv->mv;
	int status;
	enum uwb_drp_reason reason_code;
	struct uwb_mas_bm mas;
	
	status = FUNC10(drp_ie);
	reason_code = FUNC9(drp_ie);
	FUNC8(&mas, drp_ie);

	switch (reason_code) {
	case UWB_DRP_REASON_ACCEPTED:

		if (rsv->state == UWB_RSV_STATE_T_CONFLICT) {
			FUNC11(rsv, UWB_RSV_STATE_T_CONFLICT);
			break;
		}

		if (rsv->state == UWB_RSV_STATE_T_EXPANDING_ACCEPTED) {
			/* drp_ie is companion */
			if (!FUNC2(rsv->mas.bm, mas.bm, UWB_NUM_MAS))
				/* stroke companion */
				FUNC11(rsv, UWB_RSV_STATE_T_EXPANDING_ACCEPTED);	
		} else {
			if (!FUNC2(rsv->mas.bm, mas.bm, UWB_NUM_MAS)) {
				if (FUNC6(rc, &mas) == -EBUSY) {
					/* FIXME: there is a conflict, find
					 * the conflicting reservations and
					 * take a sensible action. Consider
					 * that in drp_ie there is the
					 * "neighbour" */
					FUNC7(rc, drp_evt, drp_ie, &mas);
				} else {
					/* accept the extra reservation */
					FUNC1(mv->companion_mas.bm, mas.bm, UWB_NUM_MAS);
					FUNC11(rsv, UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
				}
			} else {
				if (status) {
					FUNC11(rsv, UWB_RSV_STATE_T_ACCEPTED);
				}
			}
			
		}
		break;

	case UWB_DRP_REASON_MODIFIED:
		/* check to see if we have already modified the reservation */
		if (FUNC2(rsv->mas.bm, mas.bm, UWB_NUM_MAS)) {
			FUNC11(rsv, UWB_RSV_STATE_T_ACCEPTED);
			break;
		}

		/* find if the owner wants to expand or reduce */
		if (FUNC3(mas.bm, rsv->mas.bm, UWB_NUM_MAS)) {
			/* owner is reducing */
			FUNC0(mv->companion_mas.bm, rsv->mas.bm, mas.bm, UWB_NUM_MAS);
			FUNC5(rsv->rc, &mv->companion_mas);
		}

		FUNC1(rsv->mas.bm, mas.bm, UWB_NUM_MAS);
		FUNC11(rsv, UWB_RSV_STATE_T_RESIZED);
		break;
	default:
		FUNC4(dev, "ignoring invalid DRP IE state (%d/%d)\n",
			 reason_code, status);
	}
}