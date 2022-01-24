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
typedef  scalar_t__ uint64_t ;
struct dlm_ls {scalar_t__ ls_recover_seq; int /*<<< orphan*/  ls_recv_active; int /*<<< orphan*/  ls_recover_lock; int /*<<< orphan*/  ls_in_recovery; int /*<<< orphan*/  ls_flags; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  LSFL_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dlm_ls *ls, uint64_t seq)
{
	int error = -EINTR;

	FUNC0(&ls->ls_recv_active);

	FUNC2(&ls->ls_recover_lock);
	if (ls->ls_recover_seq == seq) {
		FUNC1(LSFL_RUNNING, &ls->ls_flags);
		/* unblocks processes waiting to enter the dlm */
		FUNC4(&ls->ls_in_recovery);
		error = 0;
	}
	FUNC3(&ls->ls_recover_lock);

	FUNC4(&ls->ls_recv_active);
	return error;
}