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
struct t10_alua_lu_gp_member {int lu_gp_assoc; int /*<<< orphan*/  lu_gp_mem_list; struct t10_alua_lu_gp* lu_gp; } ;
struct t10_alua_lu_gp {int /*<<< orphan*/  lu_gp_lock; int /*<<< orphan*/  lu_gp_members; int /*<<< orphan*/  lu_gp_mem_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
	struct t10_alua_lu_gp_member *lu_gp_mem,
	struct t10_alua_lu_gp *lu_gp)
{
	FUNC1(&lu_gp->lu_gp_lock);
	lu_gp_mem->lu_gp = lu_gp;
	lu_gp_mem->lu_gp_assoc = 1;
	FUNC0(&lu_gp_mem->lu_gp_mem_list, &lu_gp->lu_gp_mem_list);
	lu_gp->lu_gp_members++;
	FUNC2(&lu_gp->lu_gp_lock);
}