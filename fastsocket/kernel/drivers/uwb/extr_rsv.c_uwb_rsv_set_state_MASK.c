#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  unsafe_bm; int /*<<< orphan*/  bm; int /*<<< orphan*/  unsafe; int /*<<< orphan*/  safe; } ;
struct TYPE_7__ {int /*<<< orphan*/  unsafe_bm; int /*<<< orphan*/  bm; int /*<<< orphan*/  unsafe; int /*<<< orphan*/  safe; } ;
struct uwb_rsv_move {TYPE_4__ companion_mas; TYPE_1__ final_mas; } ;
struct uwb_rsv {int state; int needs_release_companion_mas; TYPE_3__* rc; TYPE_4__ mas; struct uwb_rsv_move mv; } ;
typedef  enum uwb_rsv_state { ____Placeholder_uwb_rsv_state } uwb_rsv_state ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {TYPE_2__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_MAS ; 
#define  UWB_RSV_STATE_NONE 141 
#define  UWB_RSV_STATE_O_ESTABLISHED 140 
#define  UWB_RSV_STATE_O_INITIATED 139 
#define  UWB_RSV_STATE_O_MODIFIED 138 
#define  UWB_RSV_STATE_O_MOVE_COMBINING 137 
#define  UWB_RSV_STATE_O_MOVE_EXPANDING 136 
#define  UWB_RSV_STATE_O_MOVE_REDUCING 135 
#define  UWB_RSV_STATE_O_PENDING 134 
#define  UWB_RSV_STATE_T_ACCEPTED 133 
#define  UWB_RSV_STATE_T_CONFLICT 132 
#define  UWB_RSV_STATE_T_DENIED 131 
#define  UWB_RSV_STATE_T_EXPANDING_ACCEPTED 130 
#define  UWB_RSV_STATE_T_PENDING 129 
#define  UWB_RSV_STATE_T_RESIZED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct uwb_rsv*,int const) ; 
 int /*<<< orphan*/  FUNC10 (struct uwb_rsv*) ; 

void FUNC11(struct uwb_rsv *rsv, enum uwb_rsv_state new_state)
{
	struct uwb_rsv_move *mv = &rsv->mv;

	if (rsv->state == new_state) {
		switch (rsv->state) {
		case UWB_RSV_STATE_O_ESTABLISHED:
		case UWB_RSV_STATE_O_MOVE_EXPANDING:
		case UWB_RSV_STATE_O_MOVE_COMBINING:
		case UWB_RSV_STATE_O_MOVE_REDUCING:
		case UWB_RSV_STATE_T_ACCEPTED:
		case UWB_RSV_STATE_T_EXPANDING_ACCEPTED:
		case UWB_RSV_STATE_T_RESIZED:
		case UWB_RSV_STATE_NONE:
			FUNC10(rsv);
			break;
		default:
			/* Expecting a state transition so leave timer
			   as-is. */
			break;
		}
		return;
	}

	FUNC7("SC", rsv);

	switch (new_state) {
	case UWB_RSV_STATE_NONE:
		FUNC9(rsv, UWB_RSV_STATE_NONE);
		FUNC6(rsv);
		break;
	case UWB_RSV_STATE_O_INITIATED:
		FUNC9(rsv, UWB_RSV_STATE_O_INITIATED);
		break;
	case UWB_RSV_STATE_O_PENDING:
		FUNC9(rsv, UWB_RSV_STATE_O_PENDING);
		break;
	case UWB_RSV_STATE_O_MODIFIED:
		/* in the companion there are the MASes to drop */
		FUNC0(rsv->mas.bm, rsv->mas.bm, mv->companion_mas.bm, UWB_NUM_MAS);
		FUNC9(rsv, UWB_RSV_STATE_O_MODIFIED);
		break;
	case UWB_RSV_STATE_O_ESTABLISHED:
		if (rsv->state == UWB_RSV_STATE_O_MODIFIED
		    || rsv->state == UWB_RSV_STATE_O_MOVE_REDUCING) {
			FUNC4(rsv->rc, &mv->companion_mas);
			rsv->needs_release_companion_mas = false;
		}
		FUNC5(rsv->rc, &rsv->mas);
		FUNC9(rsv, UWB_RSV_STATE_O_ESTABLISHED);
		FUNC6(rsv);
		break;
	case UWB_RSV_STATE_O_MOVE_EXPANDING:
		rsv->needs_release_companion_mas = true;
		FUNC9(rsv, UWB_RSV_STATE_O_MOVE_EXPANDING);
		break;
	case UWB_RSV_STATE_O_MOVE_COMBINING:
		rsv->needs_release_companion_mas = false;
		FUNC5(rsv->rc, &mv->companion_mas);
		FUNC2(rsv->mas.bm, rsv->mas.bm, mv->companion_mas.bm, UWB_NUM_MAS);
		rsv->mas.safe   += mv->companion_mas.safe;
		rsv->mas.unsafe += mv->companion_mas.unsafe;
		FUNC9(rsv, UWB_RSV_STATE_O_MOVE_COMBINING);
		break;
	case UWB_RSV_STATE_O_MOVE_REDUCING:
		FUNC0(mv->companion_mas.bm, rsv->mas.bm, mv->final_mas.bm, UWB_NUM_MAS);
		rsv->needs_release_companion_mas = true;
		rsv->mas.safe   = mv->final_mas.safe;
		rsv->mas.unsafe = mv->final_mas.unsafe;
		FUNC1(rsv->mas.bm, mv->final_mas.bm, UWB_NUM_MAS);
		FUNC1(rsv->mas.unsafe_bm, mv->final_mas.unsafe_bm, UWB_NUM_MAS);
		FUNC9(rsv, UWB_RSV_STATE_O_MOVE_REDUCING);
		break;
	case UWB_RSV_STATE_T_ACCEPTED:
	case UWB_RSV_STATE_T_RESIZED:
		rsv->needs_release_companion_mas = false;
		FUNC5(rsv->rc, &rsv->mas);
		FUNC9(rsv, UWB_RSV_STATE_T_ACCEPTED);
		FUNC6(rsv);
		break;
	case UWB_RSV_STATE_T_DENIED:
		FUNC9(rsv, UWB_RSV_STATE_T_DENIED);
		break;
	case UWB_RSV_STATE_T_CONFLICT:
		FUNC9(rsv, UWB_RSV_STATE_T_CONFLICT);
		break;
	case UWB_RSV_STATE_T_PENDING:
		FUNC9(rsv, UWB_RSV_STATE_T_PENDING);
		break;
	case UWB_RSV_STATE_T_EXPANDING_ACCEPTED:
		rsv->needs_release_companion_mas = true;
		FUNC5(rsv->rc, &mv->companion_mas);
		FUNC9(rsv, UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
		break;
	default:
		FUNC3(&rsv->rc->uwb_dev.dev, "unhandled state: %s (%d)\n",
			FUNC8(new_state), new_state);
	}
}