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
struct TYPE_5__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv_move {TYPE_2__ companion_mas; } ;
struct TYPE_6__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {TYPE_3__ mas; int /*<<< orphan*/  state; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int /*<<< orphan*/  last_availability_bm; } ;
typedef  enum uwb_drp_reason { ____Placeholder_uwb_drp_reason } uwb_drp_reason ;

/* Variables and functions */
#define  UWB_DRP_REASON_ACCEPTED 138 
#define  UWB_DRP_REASON_CONFLICT 137 
#define  UWB_DRP_REASON_DENIED 136 
#define  UWB_DRP_REASON_PENDING 135 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int const UWB_RSV_STATE_NONE ; 
#define  UWB_RSV_STATE_O_ESTABLISHED 134 
#define  UWB_RSV_STATE_O_INITIATED 133 
#define  UWB_RSV_STATE_O_MODIFIED 132 
#define  UWB_RSV_STATE_O_MOVE_COMBINING 131 
#define  UWB_RSV_STATE_O_MOVE_EXPANDING 130 
#define  UWB_RSV_STATE_O_MOVE_REDUCING 129 
#define  UWB_RSV_STATE_O_PENDING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*,struct uwb_rsv*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_mas_bm*,struct uwb_ie_drp*) ; 
 int FUNC5 (struct uwb_ie_drp*) ; 
 int FUNC6 (struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rsv*,int const) ; 

__attribute__((used)) static void FUNC8(struct uwb_rc *rc, struct uwb_rsv *rsv,
				  struct uwb_dev *src, struct uwb_ie_drp *drp_ie,
				  struct uwb_rc_evt_drp *drp_evt)
{
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_rsv_move *mv = &rsv->mv;
	int status;
	enum uwb_drp_reason reason_code;
	struct uwb_mas_bm mas;

	status = FUNC6(drp_ie);
	reason_code = FUNC5(drp_ie);
	FUNC4(&mas, drp_ie);

	if (status) {
		switch (reason_code) {
		case UWB_DRP_REASON_ACCEPTED:
			switch (rsv->state) {
			case UWB_RSV_STATE_O_PENDING:
			case UWB_RSV_STATE_O_INITIATED:
			case UWB_RSV_STATE_O_ESTABLISHED:
				FUNC7(rsv, UWB_RSV_STATE_O_ESTABLISHED);
				break;
			case UWB_RSV_STATE_O_MODIFIED:
				if (FUNC1(mas.bm, rsv->mas.bm, UWB_NUM_MAS)) {
					FUNC7(rsv, UWB_RSV_STATE_O_ESTABLISHED);
				} else {
					FUNC7(rsv, UWB_RSV_STATE_O_MODIFIED);	
				}
				break;
				
			case UWB_RSV_STATE_O_MOVE_REDUCING: /* shouldn' t be a problem */
				if (FUNC1(mas.bm, rsv->mas.bm, UWB_NUM_MAS)) {
					FUNC7(rsv, UWB_RSV_STATE_O_ESTABLISHED);
				} else {
					FUNC7(rsv, UWB_RSV_STATE_O_MOVE_REDUCING);	
				}
				break;
			case UWB_RSV_STATE_O_MOVE_EXPANDING:
				if (FUNC1(mas.bm, mv->companion_mas.bm, UWB_NUM_MAS)) {
					/* Companion reservation accepted */
					FUNC7(rsv, UWB_RSV_STATE_O_MOVE_COMBINING);
				} else {
					FUNC7(rsv, UWB_RSV_STATE_O_MOVE_EXPANDING);
				}
				break;
			case UWB_RSV_STATE_O_MOVE_COMBINING:
				if (FUNC1(mas.bm, rsv->mas.bm, UWB_NUM_MAS))
					FUNC7(rsv, UWB_RSV_STATE_O_MOVE_REDUCING);
				else
					FUNC7(rsv, UWB_RSV_STATE_O_MOVE_COMBINING);
				break;
			default:
				break;	
			}
			break;
		default:
			FUNC2(dev, "ignoring invalid DRP IE state (%d/%d)\n",
				 reason_code, status);
		}
	} else {
		switch (reason_code) {
		case UWB_DRP_REASON_PENDING:
			FUNC7(rsv, UWB_RSV_STATE_O_PENDING);
			break;
		case UWB_DRP_REASON_DENIED:
			FUNC7(rsv, UWB_RSV_STATE_NONE);
			break;
		case UWB_DRP_REASON_CONFLICT:
			/* resolve the conflict */
			FUNC0(mas.bm, src->last_availability_bm,
					  UWB_NUM_MAS);
			FUNC3(rc, rsv, drp_evt, drp_ie, &mas);
			break;
		default:
			FUNC2(dev, "ignoring invalid DRP IE state (%d/%d)\n",
				 reason_code, status);
		}
	}
}