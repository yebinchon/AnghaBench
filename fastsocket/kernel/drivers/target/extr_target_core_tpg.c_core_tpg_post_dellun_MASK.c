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
struct se_portal_group {int /*<<< orphan*/  tpg_lun_lock; } ;
struct se_lun {int /*<<< orphan*/  lun_status; int /*<<< orphan*/  lun_se_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSPORT_LUN_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct se_portal_group*,struct se_lun*) ; 
 int /*<<< orphan*/  FUNC1 (struct se_portal_group*,struct se_lun*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(
	struct se_portal_group *tpg,
	struct se_lun *lun)
{
	FUNC1(tpg, lun);

	FUNC0(lun->lun_se_dev, tpg, lun);

	FUNC2(&tpg->tpg_lun_lock);
	lun->lun_status = TRANSPORT_LUN_STATUS_FREE;
	FUNC3(&tpg->tpg_lun_lock);

	return 0;
}