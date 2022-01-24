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
struct t10_alua_tg_pt_gp_member {struct se_port* tg_pt; int /*<<< orphan*/  tg_pt_gp_mem_ref_cnt; int /*<<< orphan*/  tg_pt_gp_mem_lock; int /*<<< orphan*/  tg_pt_gp_mem_list; } ;
struct se_port {struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct t10_alua_tg_pt_gp_member* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct t10_alua_tg_pt_gp_member* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t10_alua_tg_pt_gp_mem_cache ; 

struct t10_alua_tg_pt_gp_member *FUNC6(
	struct se_port *port)
{
	struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;

	tg_pt_gp_mem = FUNC3(t10_alua_tg_pt_gp_mem_cache,
				GFP_KERNEL);
	if (!tg_pt_gp_mem) {
		FUNC4("Unable to allocate struct t10_alua_tg_pt_gp_member\n");
		return FUNC0(-ENOMEM);
	}
	FUNC1(&tg_pt_gp_mem->tg_pt_gp_mem_list);
	FUNC5(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
	FUNC2(&tg_pt_gp_mem->tg_pt_gp_mem_ref_cnt, 0);

	tg_pt_gp_mem->tg_pt = port;
	port->sep_alua_tg_pt_gp_mem = tg_pt_gp_mem;

	return tg_pt_gp_mem;
}