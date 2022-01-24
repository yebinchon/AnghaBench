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
typedef  int /*<<< orphan*/  u32 ;
struct t10_alua_tg_pt_gp_member {int /*<<< orphan*/  tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct TYPE_2__ {int /*<<< orphan*/  cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_trans_delay_msecs; int /*<<< orphan*/  tg_pt_gp_id; TYPE_1__ tg_pt_gp_group; int /*<<< orphan*/  tg_pt_gp_md_buf_len; } ;
struct se_port {int /*<<< orphan*/  sep_tg_pt_md_mutex; scalar_t__ sep_tg_pt_secondary_write_md; int /*<<< orphan*/  sep_tg_pt_secondary_stat; int /*<<< orphan*/  sep_tg_pt_secondary_offline; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_STATUS_ALTERED_BY_EXPLICT_STPG ; 
 int /*<<< orphan*/  ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct t10_alua_tg_pt_gp_member*,struct se_port*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(
	struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem,
	struct se_port *port,
	int explict,
	int offline)
{
	struct t10_alua_tg_pt_gp *tg_pt_gp;
	unsigned char *md_buf;
	u32 md_buf_len;
	int trans_delay_msecs;

	FUNC10(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
	tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
	if (!tg_pt_gp) {
		FUNC11(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
		FUNC9("Unable to complete secondary state"
				" transition\n");
		return -EINVAL;
	}
	trans_delay_msecs = tg_pt_gp->tg_pt_gp_trans_delay_msecs;
	/*
	 * Set the secondary ALUA target port access state to OFFLINE
	 * or release the previously secondary state for struct se_port
	 */
	if (offline)
		FUNC0(&port->sep_tg_pt_secondary_offline, 1);
	else
		FUNC0(&port->sep_tg_pt_secondary_offline, 0);

	md_buf_len = tg_pt_gp->tg_pt_gp_md_buf_len;
	port->sep_tg_pt_secondary_stat = (explict) ?
			ALUA_STATUS_ALTERED_BY_EXPLICT_STPG :
			ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA;

	FUNC8("Successful %s ALUA transition TG PT Group: %s ID: %hu"
		" to secondary access state: %s\n", (explict) ? "explict" :
		"implict", FUNC1(&tg_pt_gp->tg_pt_gp_group.cg_item),
		tg_pt_gp->tg_pt_gp_id, (offline) ? "OFFLINE" : "ONLINE");

	FUNC11(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
	/*
	 * Do the optional transition delay after we set the secondary
	 * ALUA access state.
	 */
	if (trans_delay_msecs != 0)
		FUNC5(trans_delay_msecs);
	/*
	 * See if we need to update the ALUA fabric port metadata for
	 * secondary state and status
	 */
	if (port->sep_tg_pt_secondary_write_md) {
		md_buf = FUNC4(md_buf_len, GFP_KERNEL);
		if (!md_buf) {
			FUNC9("Unable to allocate md_buf for"
				" secondary ALUA access metadata\n");
			return -ENOMEM;
		}
		FUNC6(&port->sep_tg_pt_md_mutex);
		FUNC2(tg_pt_gp_mem, port,
				md_buf, md_buf_len);
		FUNC7(&port->sep_tg_pt_md_mutex);

		FUNC3(md_buf);
	}

	return 0;
}