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
struct uwb_rsv {scalar_t__ state; struct uwb_rc* rc; } ;
struct uwb_rc {int /*<<< orphan*/  rsvs_mutex; } ;

/* Variables and functions */
 scalar_t__ UWB_RSV_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rsv*,scalar_t__) ; 

void FUNC3(struct uwb_rsv *rsv)
{
	struct uwb_rc *rc = rsv->rc;

	FUNC0(&rc->rsvs_mutex);

	if (rsv->state != UWB_RSV_STATE_NONE)
		FUNC2(rsv, UWB_RSV_STATE_NONE);

	FUNC1(&rc->rsvs_mutex);
}