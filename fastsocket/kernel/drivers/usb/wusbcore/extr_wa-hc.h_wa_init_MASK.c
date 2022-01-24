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
struct wahc {int /*<<< orphan*/  xfer_id_count; int /*<<< orphan*/  xfer_work; int /*<<< orphan*/  xfer_list_lock; int /*<<< orphan*/  xfer_delayed_list; int /*<<< orphan*/  xfer_list; int /*<<< orphan*/  dti_edc; int /*<<< orphan*/  notifs_queued; int /*<<< orphan*/  nep_edc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wahc*) ; 
 int /*<<< orphan*/  wa_urb_enqueue_run ; 

__attribute__((used)) static inline void FUNC6(struct wahc *wa)
{
	FUNC3(&wa->nep_edc);
	FUNC2(&wa->notifs_queued, 0);
	FUNC5(wa);
	FUNC3(&wa->dti_edc);
	FUNC0(&wa->xfer_list);
	FUNC0(&wa->xfer_delayed_list);
	FUNC4(&wa->xfer_list_lock);
	FUNC1(&wa->xfer_work, wa_urb_enqueue_run);
	FUNC2(&wa->xfer_id_count, 1);
}