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
struct dlm_rsb {int /*<<< orphan*/  res_recover_list; struct dlm_ls* res_ls; } ;
struct dlm_ls {int /*<<< orphan*/  ls_recover_list_lock; int /*<<< orphan*/  ls_recover_list_count; int /*<<< orphan*/  ls_recover_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dlm_rsb *r)
{
	struct dlm_ls *ls = r->res_ls;

	FUNC3(&ls->ls_recover_list_lock);
	if (FUNC2(&r->res_recover_list)) {
		FUNC1(&r->res_recover_list, &ls->ls_recover_list);
		ls->ls_recover_list_count++;
		FUNC0(r);
	}
	FUNC4(&ls->ls_recover_list_lock);
}