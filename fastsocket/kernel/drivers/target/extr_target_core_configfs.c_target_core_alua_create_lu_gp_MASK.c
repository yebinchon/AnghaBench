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
struct config_item {int dummy; } ;
struct config_group {struct config_item cg_item; } ;
struct t10_alua_lu_gp {struct config_group lu_gp_group; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t10_alua_lu_gp*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*) ; 
 struct t10_alua_lu_gp* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_core_alua_lu_gp_cit ; 

__attribute__((used)) static struct config_group *FUNC5(
	struct config_group *group,
	const char *name)
{
	struct t10_alua_lu_gp *lu_gp;
	struct config_group *alua_lu_gp_cg = NULL;
	struct config_item *alua_lu_gp_ci = NULL;

	lu_gp = FUNC3(name, 0);
	if (FUNC0(lu_gp))
		return NULL;

	alua_lu_gp_cg = &lu_gp->lu_gp_group;
	alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;

	FUNC1(alua_lu_gp_cg, name,
			&target_core_alua_lu_gp_cit);

	FUNC4("Target_Core_ConfigFS: Allocated ALUA Logical Unit"
		" Group: core/alua/lu_gps/%s\n",
		FUNC2(alua_lu_gp_ci));

	return alua_lu_gp_cg;

}