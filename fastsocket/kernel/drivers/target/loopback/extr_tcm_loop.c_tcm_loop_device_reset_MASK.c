#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct se_portal_group {int /*<<< orphan*/  se_tpg_tfo; } ;
struct tcm_loop_tpg {struct se_portal_group tl_se_tpg; } ;
struct tcm_loop_tmr {int /*<<< orphan*/  tmr_complete; int /*<<< orphan*/  tl_tmr_wait; } ;
struct tcm_loop_nexus {struct se_session* se_sess; } ;
struct tcm_loop_hba {struct tcm_loop_tpg* tl_hba_tpgs; struct tcm_loop_nexus* tl_nexus; } ;
struct se_cmd {TYPE_2__* se_tmr_req; } ;
struct tcm_loop_cmd {int /*<<< orphan*/ * tl_sense_buf; struct se_cmd tl_se_cmd; } ;
struct se_session {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {scalar_t__ response; } ;
struct TYPE_3__ {size_t id; int /*<<< orphan*/  lun; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int FAILED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 int SUCCESS ; 
 scalar_t__ TMR_FUNCTION_COMPLETE ; 
 int /*<<< orphan*/  TMR_LUN_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct se_cmd*,struct tcm_loop_tmr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcm_loop_tmr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tcm_loop_cmd*) ; 
 struct tcm_loop_cmd* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcm_loop_tmr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcm_loop_cmd_cache ; 
 int /*<<< orphan*/  FUNC9 (struct se_cmd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct se_cmd*,int /*<<< orphan*/ ,struct se_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct scsi_cmnd *sc)
{
	struct se_cmd *se_cmd = NULL;
	struct se_portal_group *se_tpg;
	struct se_session *se_sess;
	struct tcm_loop_cmd *tl_cmd = NULL;
	struct tcm_loop_hba *tl_hba;
	struct tcm_loop_nexus *tl_nexus;
	struct tcm_loop_tmr *tl_tmr = NULL;
	struct tcm_loop_tpg *tl_tpg;
	int ret = FAILED, rc;
	/*
	 * Locate the tcm_loop_hba_t pointer
	 */
	tl_hba = *(struct tcm_loop_hba **)FUNC8(sc->device->host);
	/*
	 * Locate the tl_nexus and se_sess pointers
	 */
	tl_nexus = tl_hba->tl_nexus;
	if (!tl_nexus) {
		FUNC7("Unable to perform device reset without"
				" active I_T Nexus\n");
		return FAILED;
	}
	se_sess = tl_nexus->se_sess;
	/*
	 * Locate the tl_tpg and se_tpg pointers from TargetID in sc->device->id
	 */
	tl_tpg = &tl_hba->tl_hba_tpgs[sc->device->id];
	se_tpg = &tl_tpg->tl_se_tpg;

	tl_cmd = FUNC5(tcm_loop_cmd_cache, GFP_KERNEL);
	if (!tl_cmd) {
		FUNC7("Unable to allocate memory for tl_cmd\n");
		return FAILED;
	}

	tl_tmr = FUNC6(sizeof(struct tcm_loop_tmr), GFP_KERNEL);
	if (!tl_tmr) {
		FUNC7("Unable to allocate memory for tl_tmr\n");
		goto release;
	}
	FUNC2(&tl_tmr->tl_tmr_wait);

	se_cmd = &tl_cmd->tl_se_cmd;
	/*
	 * Initialize struct se_cmd descriptor from target_core_mod infrastructure
	 */
	FUNC11(se_cmd, se_tpg->se_tpg_tfo, se_sess, 0,
				DMA_NONE, MSG_SIMPLE_TAG,
				&tl_cmd->tl_sense_buf[0]);

	rc = FUNC1(se_cmd, tl_tmr, TMR_LUN_RESET, GFP_KERNEL);
	if (rc < 0)
		goto release;
	/*
	 * Locate the underlying TCM struct se_lun from sc->device->lun
	 */
	if (FUNC12(se_cmd, sc->device->lun) < 0)
		goto release;
	/*
	 * Queue the TMR to TCM Core and sleep waiting for tcm_loop_queue_tm_rsp()
	 * to wake us up.
	 */
	FUNC10(se_cmd);
	FUNC13(tl_tmr->tl_tmr_wait, FUNC0(&tl_tmr->tmr_complete));
	/*
	 * The TMR LUN_RESET has completed, check the response status and
	 * then release allocations.
	 */
	ret = (se_cmd->se_tmr_req->response == TMR_FUNCTION_COMPLETE) ?
		SUCCESS : FAILED;
release:
	if (se_cmd)
		FUNC9(se_cmd, 1);
	else
		FUNC4(tcm_loop_cmd_cache, tl_cmd);
	FUNC3(tl_tmr);
	return ret;
}