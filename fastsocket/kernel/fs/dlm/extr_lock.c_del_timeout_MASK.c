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
struct dlm_ls {int /*<<< orphan*/  ls_timeout_mutex; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_time_list; TYPE_1__* lkb_resource; } ;
struct TYPE_2__ {struct dlm_ls* res_ls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lkb*) ; 

__attribute__((used)) static void FUNC5(struct dlm_lkb *lkb)
{
	struct dlm_ls *ls = lkb->lkb_resource->res_ls;

	FUNC2(&ls->ls_timeout_mutex);
	if (!FUNC1(&lkb->lkb_time_list)) {
		FUNC0(&lkb->lkb_time_list);
		FUNC4(lkb);
	}
	FUNC3(&ls->ls_timeout_mutex);
}