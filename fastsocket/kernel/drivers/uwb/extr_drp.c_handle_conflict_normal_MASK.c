#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv_move {TYPE_1__ companion_mas; } ;
struct TYPE_4__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {TYPE_2__ mas; struct uwb_rsv_move mv; struct uwb_rc* rc; } ;
struct uwb_drp_backoff_win {int can_reserve_extra_mases; } ;
struct uwb_rc {struct uwb_drp_backoff_win bow; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct uwb_ie_drp {int dummy; } ;

/* Variables and functions */
#define  UWB_DRP_CONFLICT_ACT2 129 
#define  UWB_DRP_CONFLICT_ACT3 128 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  UWB_RSV_STATE_O_MODIFIED ; 
 int /*<<< orphan*/  UWB_RSV_STATE_O_TO_BE_MOVED ; 
 int /*<<< orphan*/  UWB_RSV_STATE_T_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uwb_ie_drp*,int,struct uwb_rsv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*) ; 
 scalar_t__ FUNC3 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rsv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rsv*) ; 

__attribute__((used)) static void FUNC6(struct uwb_ie_drp *drp_ie, 
				   int ext_beacon_slot, 
				   struct uwb_rsv *rsv, 
				   struct uwb_mas_bm *conflicting_mas)
{
	struct uwb_rc *rc = rsv->rc;
	struct uwb_rsv_move *mv = &rsv->mv;
	struct uwb_drp_backoff_win *bow = &rc->bow;
	int action;

	action = FUNC1(drp_ie, ext_beacon_slot, rsv, FUNC5(rsv));

	if (FUNC3(rsv)) {
		switch(action) {
		case UWB_DRP_CONFLICT_ACT2:
			/* try move */
			FUNC4(rsv, UWB_RSV_STATE_O_TO_BE_MOVED);
			if (bow->can_reserve_extra_mases == false)
				FUNC2(rc);
			
			break;
		case UWB_DRP_CONFLICT_ACT3:
			FUNC2(rc);
			/* drop some mases with reason modified */
			/* put in the companion the mases to be dropped */
			FUNC0(mv->companion_mas.bm, rsv->mas.bm, conflicting_mas->bm, UWB_NUM_MAS);
			FUNC4(rsv, UWB_RSV_STATE_O_MODIFIED);
		default:
			break;
		}
	} else {
		switch(action) {
		case UWB_DRP_CONFLICT_ACT2:
		case UWB_DRP_CONFLICT_ACT3:
			FUNC4(rsv, UWB_RSV_STATE_T_CONFLICT);	
		default:
			break;
		}

	}
	
}