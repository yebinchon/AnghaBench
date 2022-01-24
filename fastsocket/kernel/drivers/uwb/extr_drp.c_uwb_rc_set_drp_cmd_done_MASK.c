#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uwb_rceb {int dummy; } ;
struct uwb_rc_evt_set_drp_ie {scalar_t__ bResultCode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {int set_drp_ie_pending; int /*<<< orphan*/  rsvs_lock; TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ UWB_RC_RES_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 

__attribute__((used)) static void FUNC5(struct uwb_rc *rc, void *arg,
				    struct uwb_rceb *reply, ssize_t reply_size)
{
	struct uwb_rc_evt_set_drp_ie *r = (struct uwb_rc_evt_set_drp_ie *)reply;

	if (r != NULL) {
		if (r->bResultCode != UWB_RC_RES_SUCCESS)
			FUNC0(&rc->uwb_dev.dev, "SET-DRP-IE failed: %s (%d)\n",
				FUNC3(r->bResultCode), r->bResultCode);
	} else
		FUNC0(&rc->uwb_dev.dev, "SET-DRP-IE: timeout\n");

	FUNC1(&rc->rsvs_lock);
	if (rc->set_drp_ie_pending > 1) {
		rc->set_drp_ie_pending = 0;
		FUNC4(rc);	
	} else {
		rc->set_drp_ie_pending = 0;	
	}
	FUNC2(&rc->rsvs_lock);
}