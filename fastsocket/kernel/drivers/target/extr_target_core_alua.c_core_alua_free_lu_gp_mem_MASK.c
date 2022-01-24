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
struct t10_alua_lu_gp_member {int /*<<< orphan*/  lu_gp_mem_lock; struct t10_alua_lu_gp* lu_gp; scalar_t__ lu_gp_assoc; int /*<<< orphan*/  lu_gp_mem_list; int /*<<< orphan*/  lu_gp_mem_ref_cnt; } ;
struct t10_alua_lu_gp {int /*<<< orphan*/  lu_gp_lock; int /*<<< orphan*/  lu_gp_members; } ;
struct se_device {struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct t10_alua_lu_gp_member*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t10_alua_lu_gp_mem_cache ; 

void FUNC6(struct se_device *dev)
{
	struct t10_alua_lu_gp *lu_gp;
	struct t10_alua_lu_gp_member *lu_gp_mem;

	lu_gp_mem = dev->dev_alua_lu_gp_mem;
	if (!lu_gp_mem)
		return;

	while (FUNC0(&lu_gp_mem->lu_gp_mem_ref_cnt))
		FUNC1();

	FUNC4(&lu_gp_mem->lu_gp_mem_lock);
	lu_gp = lu_gp_mem->lu_gp;
	if (lu_gp) {
		FUNC4(&lu_gp->lu_gp_lock);
		if (lu_gp_mem->lu_gp_assoc) {
			FUNC3(&lu_gp_mem->lu_gp_mem_list);
			lu_gp->lu_gp_members--;
			lu_gp_mem->lu_gp_assoc = 0;
		}
		FUNC5(&lu_gp->lu_gp_lock);
		lu_gp_mem->lu_gp = NULL;
	}
	FUNC5(&lu_gp_mem->lu_gp_mem_lock);

	FUNC2(t10_alua_lu_gp_mem_cache, lu_gp_mem);
}