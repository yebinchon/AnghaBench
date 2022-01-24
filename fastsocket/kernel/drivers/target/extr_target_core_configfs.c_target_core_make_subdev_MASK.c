#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct config_item {int dummy; } ;
struct config_group {struct config_group** default_groups; struct config_item cg_item; } ;
struct t10_alua_tg_pt_gp {struct config_group tg_pt_gp_group; } ;
struct se_subsystem_api {int dummy; } ;
struct se_hba {int /*<<< orphan*/  hba_access_mutex; struct se_subsystem_api* transport; } ;
struct TYPE_8__ {struct config_group stat_group; } ;
struct TYPE_7__ {struct config_group alua_tg_pt_gps_group; struct t10_alua_tg_pt_gp* default_tg_pt_gp; } ;
struct TYPE_6__ {struct config_group t10_wwn_group; } ;
struct TYPE_5__ {struct config_group da_group; } ;
struct se_device {TYPE_4__ dev_stat_grps; TYPE_3__ t10_alua; TYPE_2__ t10_wwn; struct config_group dev_pr_group; TYPE_1__ dev_attrib; struct config_group dev_group; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct config_group* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 struct t10_alua_tg_pt_gp* FUNC2 (struct se_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct t10_alua_tg_pt_gp*) ; 
 struct se_hba* FUNC4 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct config_group**) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct se_device* FUNC10 (struct se_hba*,char const*) ; 
 int /*<<< orphan*/  target_core_alua_tg_pt_gp_cit ; 
 int /*<<< orphan*/  target_core_alua_tg_pt_gps_cit ; 
 int /*<<< orphan*/  target_core_dev_attrib_cit ; 
 int /*<<< orphan*/  target_core_dev_cit ; 
 int /*<<< orphan*/  target_core_dev_pr_cit ; 
 int /*<<< orphan*/  target_core_dev_wwn_cit ; 
 int /*<<< orphan*/  target_core_stat_cit ; 
 int /*<<< orphan*/  FUNC11 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct se_device*) ; 

__attribute__((used)) static struct config_group *FUNC13(
	struct config_group *group,
	const char *name)
{
	struct t10_alua_tg_pt_gp *tg_pt_gp;
	struct se_subsystem_api *t;
	struct config_item *hba_ci = &group->cg_item;
	struct se_hba *hba = FUNC4(hba_ci);
	struct se_device *dev;
	struct config_group *dev_cg = NULL, *tg_pt_gp_cg = NULL;
	struct config_group *dev_stat_grp = NULL;
	int errno = -ENOMEM, ret;

	ret = FUNC7(&hba->hba_access_mutex);
	if (ret)
		return FUNC0(ret);
	/*
	 * Locate the struct se_subsystem_api from parent's struct se_hba.
	 */
	t = hba->transport;

	dev = FUNC10(hba, name);
	if (!dev)
		goto out_unlock;

	dev_cg = &dev->dev_group;

	dev_cg->default_groups = FUNC6(sizeof(struct config_group *) * 6,
			GFP_KERNEL);
	if (!dev_cg->default_groups)
		goto out_free_device;

	FUNC1(dev_cg, name, &target_core_dev_cit);
	FUNC1(&dev->dev_attrib.da_group, "attrib",
			&target_core_dev_attrib_cit);
	FUNC1(&dev->dev_pr_group, "pr",
			&target_core_dev_pr_cit);
	FUNC1(&dev->t10_wwn.t10_wwn_group, "wwn",
			&target_core_dev_wwn_cit);
	FUNC1(&dev->t10_alua.alua_tg_pt_gps_group,
			"alua", &target_core_alua_tg_pt_gps_cit);
	FUNC1(&dev->dev_stat_grps.stat_group,
			"statistics", &target_core_stat_cit);

	dev_cg->default_groups[0] = &dev->dev_attrib.da_group;
	dev_cg->default_groups[1] = &dev->dev_pr_group;
	dev_cg->default_groups[2] = &dev->t10_wwn.t10_wwn_group;
	dev_cg->default_groups[3] = &dev->t10_alua.alua_tg_pt_gps_group;
	dev_cg->default_groups[4] = &dev->dev_stat_grps.stat_group;
	dev_cg->default_groups[5] = NULL;
	/*
	 * Add core/$HBA/$DEV/alua/default_tg_pt_gp
	 */
	tg_pt_gp = FUNC2(dev, "default_tg_pt_gp", 1);
	if (!tg_pt_gp)
		goto out_free_dev_cg_default_groups;
	dev->t10_alua.default_tg_pt_gp = tg_pt_gp;

	tg_pt_gp_cg = &dev->t10_alua.alua_tg_pt_gps_group;
	tg_pt_gp_cg->default_groups = FUNC6(sizeof(struct config_group *) * 2,
				GFP_KERNEL);
	if (!tg_pt_gp_cg->default_groups) {
		FUNC9("Unable to allocate tg_pt_gp_cg->"
				"default_groups\n");
		goto out_free_tg_pt_gp;
	}

	FUNC1(&tg_pt_gp->tg_pt_gp_group,
			"default_tg_pt_gp", &target_core_alua_tg_pt_gp_cit);
	tg_pt_gp_cg->default_groups[0] = &tg_pt_gp->tg_pt_gp_group;
	tg_pt_gp_cg->default_groups[1] = NULL;
	/*
	 * Add core/$HBA/$DEV/statistics/ default groups
	 */
	dev_stat_grp = &dev->dev_stat_grps.stat_group;
	dev_stat_grp->default_groups = FUNC6(sizeof(struct config_group *) * 4,
				GFP_KERNEL);
	if (!dev_stat_grp->default_groups) {
		FUNC9("Unable to allocate dev_stat_grp->default_groups\n");
		goto out_free_tg_pt_gp_cg_default_groups;
	}
	FUNC12(dev);

	FUNC8(&hba->hba_access_mutex);
	return dev_cg;

out_free_tg_pt_gp_cg_default_groups:
	FUNC5(tg_pt_gp_cg->default_groups);
out_free_tg_pt_gp:
	FUNC3(tg_pt_gp);
out_free_dev_cg_default_groups:
	FUNC5(dev_cg->default_groups);
out_free_device:
	FUNC11(dev);
out_unlock:
	FUNC8(&hba->hba_access_mutex);
	return FUNC0(errno);
}