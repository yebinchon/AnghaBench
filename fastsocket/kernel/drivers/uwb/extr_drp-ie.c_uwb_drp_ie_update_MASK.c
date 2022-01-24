#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int unsafe; } ;
struct uwb_rsv_move {TYPE_4__ companion_mas; struct uwb_ie_drp* companion_drp_ie; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  devaddr; TYPE_1__* dev; } ;
struct uwb_rsv {scalar_t__ state; int ie_valid; struct uwb_ie_drp* drp_ie; struct uwb_rsv_move mv; TYPE_4__ mas; TYPE_3__* owner; TYPE_2__ target; int /*<<< orphan*/  type; int /*<<< orphan*/  stream; int /*<<< orphan*/  tiebreaker; } ;
struct uwb_ie_drp {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ UWB_RSV_STATE_NONE ; 
#define  UWB_RSV_TARGET_DEV 129 
#define  UWB_RSV_TARGET_DEVADDR 128 
 int /*<<< orphan*/  FUNC0 (struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_ie_drp*,struct uwb_ie_drp*,int) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_ie_drp*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_ie_drp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_ie_drp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_ie_drp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_ie_drp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uwb_ie_drp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uwb_ie_drp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uwb_ie_drp*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC12 (struct uwb_rsv*) ; 
 scalar_t__ FUNC13 (struct uwb_rsv*) ; 
 scalar_t__ FUNC14 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC15 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC16 (struct uwb_rsv*) ; 

int FUNC17(struct uwb_rsv *rsv)
{
	struct uwb_ie_drp *drp_ie;
	struct uwb_rsv_move *mv;
	int unsafe;

	if (rsv->state == UWB_RSV_STATE_NONE) {
		FUNC0(rsv->drp_ie);
		rsv->drp_ie = NULL;
		return 0;
	}
	
	unsafe = rsv->mas.unsafe ? 1 : 0;

	if (rsv->drp_ie == NULL) {
		rsv->drp_ie = FUNC2();
		if (rsv->drp_ie == NULL)
			return -ENOMEM;
	}
	drp_ie = rsv->drp_ie;

	FUNC10(drp_ie,       unsafe);
	FUNC8(drp_ie,   rsv->tiebreaker);
	FUNC4(drp_ie,        FUNC14(rsv));
	FUNC6(drp_ie,       FUNC16(rsv));
	FUNC5(drp_ie,  FUNC15(rsv));
	FUNC7(drp_ie, rsv->stream);
	FUNC9(drp_ie,         rsv->type);

	if (FUNC14(rsv)) {
		switch (rsv->target.type) {
		case UWB_RSV_TARGET_DEV:
			drp_ie->dev_addr = rsv->target.dev->dev_addr;
			break;
		case UWB_RSV_TARGET_DEVADDR:
			drp_ie->dev_addr = rsv->target.devaddr;
			break;
		}
	} else
		drp_ie->dev_addr = rsv->owner->dev_addr;

	FUNC3(drp_ie, &rsv->mas);

	if (FUNC13(rsv)) {
		mv = &rsv->mv; 
		if (mv->companion_drp_ie == NULL) {
			mv->companion_drp_ie = FUNC2();
			if (mv->companion_drp_ie == NULL)
				return -ENOMEM;
		}
		drp_ie = mv->companion_drp_ie;
		
		/* keep all the same configuration of the main drp_ie */
		FUNC1(drp_ie, rsv->drp_ie, sizeof(struct uwb_ie_drp));
		

		/* FIXME: handle properly the unsafe bit */
		FUNC10(drp_ie,       1);
		FUNC6(drp_ie,       FUNC12(rsv));
		FUNC5(drp_ie,  FUNC11(rsv));
	
		FUNC3(drp_ie, &mv->companion_mas);
	}

	rsv->ie_valid = true;
	return 0;
}