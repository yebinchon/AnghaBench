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
struct TYPE_5__ {int /*<<< orphan*/  streams; } ;
struct TYPE_6__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int can_reserve_extra_mases; int window; TYPE_3__ timer; scalar_t__ total_expired; } ;
struct uwb_rc {TYPE_2__ uwb_dev; TYPE_1__ bow; int /*<<< orphan*/  rsv_alien_bp_work; int /*<<< orphan*/  rsv_update_work; int /*<<< orphan*/  rsvs_lock; int /*<<< orphan*/  rsvs_mutex; int /*<<< orphan*/  cnflt_alien_list; int /*<<< orphan*/  reservations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int UWB_DRP_BACKOFF_WIN_MIN ; 
 int /*<<< orphan*/  UWB_NUM_STREAMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uwb_rsv_alien_bp_work ; 
 int /*<<< orphan*/  uwb_rsv_backoff_win_timer ; 
 int /*<<< orphan*/  uwb_rsv_update_work ; 

void FUNC6(struct uwb_rc *rc)
{
	FUNC1(&rc->reservations);
	FUNC1(&rc->cnflt_alien_list);
	FUNC4(&rc->rsvs_mutex);
	FUNC5(&rc->rsvs_lock);
	FUNC0(&rc->rsv_update_work, uwb_rsv_update_work);
	FUNC0(&rc->rsv_alien_bp_work, uwb_rsv_alien_bp_work);
	rc->bow.can_reserve_extra_mases = true;
	rc->bow.total_expired = 0;
	rc->bow.window = UWB_DRP_BACKOFF_WIN_MIN >> 1;
	FUNC3(&rc->bow.timer);
	rc->bow.timer.function = uwb_rsv_backoff_win_timer;
	rc->bow.timer.data     = (unsigned long)&rc->bow;

	FUNC2(rc->uwb_dev.streams, rc->uwb_dev.streams, UWB_NUM_STREAMS);
}