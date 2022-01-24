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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  se_sess_cache ; 
 int /*<<< orphan*/  se_ua_cache ; 
 int /*<<< orphan*/  t10_alua_lu_gp_cache ; 
 int /*<<< orphan*/  t10_alua_lu_gp_mem_cache ; 
 int /*<<< orphan*/  t10_alua_tg_pt_gp_cache ; 
 int /*<<< orphan*/  t10_alua_tg_pt_gp_mem_cache ; 
 int /*<<< orphan*/  t10_pr_reg_cache ; 
 int /*<<< orphan*/  target_completion_wq ; 

void FUNC2(void)
{
	FUNC0(target_completion_wq);
	FUNC1(se_sess_cache);
	FUNC1(se_ua_cache);
	FUNC1(t10_pr_reg_cache);
	FUNC1(t10_alua_lu_gp_cache);
	FUNC1(t10_alua_lu_gp_mem_cache);
	FUNC1(t10_alua_tg_pt_gp_cache);
	FUNC1(t10_alua_tg_pt_gp_mem_cache);
}