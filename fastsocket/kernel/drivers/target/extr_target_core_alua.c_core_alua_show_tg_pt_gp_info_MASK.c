#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct t10_alua_tg_pt_gp_member {int /*<<< orphan*/  tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;
struct t10_alua_tg_pt_gp {char* tg_pt_gp_id; int /*<<< orphan*/  tg_pt_gp_alua_access_status; int /*<<< orphan*/  tg_pt_gp_alua_access_state; TYPE_1__ tg_pt_gp_group; } ;
struct se_port {int /*<<< orphan*/  sep_tg_pt_secondary_stat; int /*<<< orphan*/  sep_tg_pt_secondary_offline; struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct config_item*) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,char*,char*,char*,char*,char*,char*) ; 

ssize_t FUNC7(struct se_port *port, char *page)
{
	struct config_item *tg_pt_ci;
	struct t10_alua_tg_pt_gp *tg_pt_gp;
	struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;
	ssize_t len = 0;

	tg_pt_gp_mem = port->sep_alua_tg_pt_gp_mem;
	if (!tg_pt_gp_mem)
		return len;

	FUNC4(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
	tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
	if (tg_pt_gp) {
		tg_pt_ci = &tg_pt_gp->tg_pt_gp_group.cg_item;
		len += FUNC6(page, "TG Port Alias: %s\nTG Port Group ID:"
			" %hu\nTG Port Primary Access State: %s\nTG Port "
			"Primary Access Status: %s\nTG Port Secondary Access"
			" State: %s\nTG Port Secondary Access Status: %s\n",
			FUNC1(tg_pt_ci), tg_pt_gp->tg_pt_gp_id,
			FUNC2(FUNC0(
					&tg_pt_gp->tg_pt_gp_alua_access_state)),
			FUNC3(
				tg_pt_gp->tg_pt_gp_alua_access_status),
			(FUNC0(&port->sep_tg_pt_secondary_offline)) ?
			"Offline" : "None",
			FUNC3(port->sep_tg_pt_secondary_stat));
	}
	FUNC5(&tg_pt_gp_mem->tg_pt_gp_mem_lock);

	return len;
}