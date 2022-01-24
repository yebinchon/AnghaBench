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
typedef  int /*<<< orphan*/  u32 ;
struct se_portal_group {int /*<<< orphan*/  tpg_lun_lock; } ;
struct se_lun {int /*<<< orphan*/  lun_status; int /*<<< orphan*/  lun_access; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSPORT_LUN_STATUS_ACTIVE ; 
 int FUNC0 (void*,struct se_portal_group*,struct se_lun*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(
	struct se_portal_group *tpg,
	struct se_lun *lun,
	u32 lun_access,
	void *lun_ptr)
{
	int ret;

	ret = FUNC0(lun_ptr, tpg, lun);
	if (ret < 0)
		return ret;

	FUNC1(&tpg->tpg_lun_lock);
	lun->lun_access = lun_access;
	lun->lun_status = TRANSPORT_LUN_STATUS_ACTIVE;
	FUNC2(&tpg->tpg_lun_lock);

	return 0;
}