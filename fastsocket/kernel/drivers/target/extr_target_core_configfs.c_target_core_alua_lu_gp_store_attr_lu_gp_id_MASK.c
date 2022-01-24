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
typedef  int /*<<< orphan*/  u16 ;
struct config_group {int /*<<< orphan*/  cg_item; } ;
struct t10_alua_lu_gp {int /*<<< orphan*/  lu_gp_id; struct config_group lu_gp_group; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct t10_alua_lu_gp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(
	struct t10_alua_lu_gp *lu_gp,
	const char *page,
	size_t count)
{
	struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
	unsigned long lu_gp_id;
	int ret;

	ret = FUNC4(page, 0, &lu_gp_id);
	if (ret < 0) {
		FUNC3("strict_strtoul() returned %d for"
			" lu_gp_id\n", ret);
		return -EINVAL;
	}
	if (lu_gp_id > 0x0000ffff) {
		FUNC3("ALUA lu_gp_id: %lu exceeds maximum:"
			" 0x0000ffff\n", lu_gp_id);
		return -EINVAL;
	}

	ret = FUNC1(lu_gp, (u16)lu_gp_id);
	if (ret < 0)
		return -EINVAL;

	FUNC2("Target_Core_ConfigFS: Set ALUA Logical Unit"
		" Group: core/alua/lu_gps/%s to ID: %hu\n",
		FUNC0(&alua_lu_gp_cg->cg_item),
		lu_gp->lu_gp_id);

	return count;
}