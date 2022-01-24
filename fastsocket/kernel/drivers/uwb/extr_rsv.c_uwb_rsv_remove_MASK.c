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
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  companion_mas; } ;
struct uwb_rsv {scalar_t__ state; int /*<<< orphan*/  rc_node; TYPE_2__ target; int /*<<< orphan*/  owner; int /*<<< orphan*/  mas; int /*<<< orphan*/  rc; TYPE_1__ mv; scalar_t__ needs_release_companion_mas; } ;

/* Variables and functions */
 scalar_t__ UWB_RSV_STATE_NONE ; 
 scalar_t__ UWB_RSV_TARGET_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct uwb_rsv*) ; 
 scalar_t__ FUNC4 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rsv*,scalar_t__) ; 

void FUNC8(struct uwb_rsv *rsv)
{
	FUNC3("RM", rsv);

	if (rsv->state != UWB_RSV_STATE_NONE)
		FUNC7(rsv, UWB_RSV_STATE_NONE);

	if (rsv->needs_release_companion_mas)
		FUNC2(rsv->rc, &rsv->mv.companion_mas);
	FUNC2(rsv->rc, &rsv->mas);

	if (FUNC4(rsv))
		FUNC6(rsv);

	FUNC1(rsv->owner);
	if (rsv->target.type == UWB_RSV_TARGET_DEV)
		FUNC1(rsv->target.dev);

	FUNC0(&rsv->rc_node);
	FUNC5(rsv);
}