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
struct t10_alua_tg_pt_gp_member {scalar_t__ tg_pt_gp_assoc; int /*<<< orphan*/ * tg_pt_gp; int /*<<< orphan*/  tg_pt_gp_mem_list; } ;
struct t10_alua_tg_pt_gp {int /*<<< orphan*/  tg_pt_gp_lock; int /*<<< orphan*/  tg_pt_gp_members; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
	struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem,
	struct t10_alua_tg_pt_gp *tg_pt_gp)
{
	FUNC1(&tg_pt_gp->tg_pt_gp_lock);
	FUNC0(&tg_pt_gp_mem->tg_pt_gp_mem_list);
	tg_pt_gp_mem->tg_pt_gp = NULL;
	tg_pt_gp_mem->tg_pt_gp_assoc = 0;
	tg_pt_gp->tg_pt_gp_members--;
	FUNC2(&tg_pt_gp->tg_pt_gp_lock);
}