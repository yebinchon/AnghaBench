#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct dlm_ls {TYPE_1__ ls_timer; int /*<<< orphan*/  ls_wait_general; } ;
struct TYPE_6__ {int ci_recover_timer; } ;

/* Variables and functions */
 int EINTR ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__ dlm_config ; 
 scalar_t__ FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  dlm_wait_timer_fn ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(struct dlm_ls *ls, int (*testfn) (struct dlm_ls *ls))
{
	int error = 0;

	FUNC3(&ls->ls_timer);
	ls->ls_timer.function = dlm_wait_timer_fn;
	ls->ls_timer.data = (long) ls;
	ls->ls_timer.expires = jiffies + (dlm_config.ci_recover_timer * HZ);
	FUNC0(&ls->ls_timer);

	FUNC5(ls->ls_wait_general, testfn(ls) || FUNC2(ls));
	FUNC1(&ls->ls_timer);

	if (FUNC2(ls)) {
		FUNC4(ls, "dlm_wait_function aborted");
		error = -EINTR;
	}
	return error;
}