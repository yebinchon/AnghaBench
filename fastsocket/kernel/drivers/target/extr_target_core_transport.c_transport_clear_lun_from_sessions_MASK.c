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
struct task_struct {int dummy; } ;
struct se_lun {int /*<<< orphan*/  lun_shutdown_comp; int /*<<< orphan*/  unpacked_lun; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct se_lun*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  transport_clear_lun_thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct se_lun *lun)
{
	struct task_struct *kt;

	kt = FUNC2(transport_clear_lun_thread, lun,
			"tcm_cl_%u", lun->unpacked_lun);
	if (FUNC0(kt)) {
		FUNC3("Unable to start clear_lun thread\n");
		return FUNC1(kt);
	}
	FUNC4(&lun->lun_shutdown_comp);

	return 0;
}