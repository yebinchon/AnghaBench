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
struct se_lun {int /*<<< orphan*/  lun_sep_lock; int /*<<< orphan*/  lun_cmd_lock; int /*<<< orphan*/  lun_acl_lock; int /*<<< orphan*/  lun_cmd_list; int /*<<< orphan*/  lun_acl_list; int /*<<< orphan*/  lun_shutdown_comp; int /*<<< orphan*/  lun_acl_count; int /*<<< orphan*/  lun_status; scalar_t__ unpacked_lun; } ;
struct se_portal_group {struct se_lun tpg_virt_lun0; } ;
struct se_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRANSPORT_LUNFLAGS_READ_ONLY ; 
 int /*<<< orphan*/  TRANSPORT_LUN_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct se_portal_group*,struct se_lun*,int /*<<< orphan*/ ,struct se_device*) ; 
 struct se_device* g_lun0_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct se_portal_group *se_tpg)
{
	/* Set in core_dev_setup_virtual_lun0() */
	struct se_device *dev = g_lun0_dev;
	struct se_lun *lun = &se_tpg->tpg_virt_lun0;
	u32 lun_access = TRANSPORT_LUNFLAGS_READ_ONLY;
	int ret;

	lun->unpacked_lun = 0;
	lun->lun_status = TRANSPORT_LUN_STATUS_FREE;
	FUNC1(&lun->lun_acl_count, 0);
	FUNC3(&lun->lun_shutdown_comp);
	FUNC0(&lun->lun_acl_list);
	FUNC0(&lun->lun_cmd_list);
	FUNC4(&lun->lun_acl_lock);
	FUNC4(&lun->lun_cmd_lock);
	FUNC4(&lun->lun_sep_lock);

	ret = FUNC2(se_tpg, lun, lun_access, dev);
	if (ret < 0)
		return ret;

	return 0;
}