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
typedef  size_t uint16_t ;
struct dlm_ls {TYPE_1__* ls_lkbtbl; } ;
struct dlm_lkb {int lkb_id; scalar_t__ lkb_lvbptr; int /*<<< orphan*/  lkb_idtbl_list; int /*<<< orphan*/  lkb_ref; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  kill_lkb ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
	uint16_t bucket = (lkb->lkb_id >> 16);

	FUNC6(&ls->ls_lkbtbl[bucket].lock);
	if (FUNC4(&lkb->lkb_ref, kill_lkb)) {
		FUNC5(&lkb->lkb_idtbl_list);
		FUNC7(&ls->ls_lkbtbl[bucket].lock);

		FUNC0(lkb);

		/* for local/process lkbs, lvbptr points to caller's lksb */
		if (lkb->lkb_lvbptr && FUNC3(lkb))
			FUNC2(lkb->lkb_lvbptr);
		FUNC1(lkb);
		return 1;
	} else {
		FUNC7(&ls->ls_lkbtbl[bucket].lock);
		return 0;
	}
}