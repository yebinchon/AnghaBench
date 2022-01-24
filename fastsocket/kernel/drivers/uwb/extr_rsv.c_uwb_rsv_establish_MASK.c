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
struct uwb_rsv {int tiebreaker; int /*<<< orphan*/ * owner; int /*<<< orphan*/  rc_node; int /*<<< orphan*/  mas; struct uwb_rc* rc; } ;
struct uwb_rc {int /*<<< orphan*/  rsvs_mutex; int /*<<< orphan*/  uwb_dev; int /*<<< orphan*/  reservations; } ;
struct uwb_mas_bm {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int UWB_RSV_ALLOC_NOT_FOUND ; 
 int /*<<< orphan*/  UWB_RSV_STATE_O_INITIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct uwb_rc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc*,struct uwb_mas_bm*) ; 
 int FUNC7 (struct uwb_rsv*,struct uwb_mas_bm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct uwb_rsv*) ; 
 int FUNC9 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC10 (struct uwb_rsv*) ; 
 int /*<<< orphan*/  FUNC11 (struct uwb_rsv*,int /*<<< orphan*/ ) ; 

int FUNC12(struct uwb_rsv *rsv)
{
	struct uwb_rc *rc = rsv->rc;
	struct uwb_mas_bm available;
	int ret;

	FUNC1(&rc->rsvs_mutex);
	ret = FUNC9(rsv);
	if (ret)
		goto out;

	rsv->tiebreaker = FUNC3() & 1;
	/* get available mas bitmap */
	FUNC6(rc, &available);

	ret = FUNC7(rsv, &available, &rsv->mas);
	if (ret == UWB_RSV_ALLOC_NOT_FOUND) {
		ret = -EBUSY;
		FUNC10(rsv);
		goto out;
	}

	ret = FUNC5(rc, &rsv->mas);
	if (ret != 0) {
		FUNC10(rsv);
		goto out;
	}

	FUNC8(rsv);
	FUNC0(&rsv->rc_node, &rc->reservations);
	rsv->owner = &rc->uwb_dev;
	FUNC4(rsv->owner);
	FUNC11(rsv, UWB_RSV_STATE_O_INITIATED);
out:
	FUNC2(&rc->rsvs_mutex);
	return ret;
}