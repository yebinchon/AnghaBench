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
struct se_cmd {int scsi_status; struct pscsi_plugin_task* priv; } ;
struct request {int /*<<< orphan*/  q; int /*<<< orphan*/  resid_len; int /*<<< orphan*/  errors; struct se_cmd* end_io_data; } ;
struct pscsi_plugin_task {int /*<<< orphan*/  pscsi_result; int /*<<< orphan*/ * pscsi_cdb; int /*<<< orphan*/  pscsi_resid; } ;

/* Variables and functions */
#define  DID_OK 128 
 int SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pscsi_plugin_task*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct se_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,int) ; 

__attribute__((used)) static void FUNC6(struct request *req, int uptodate)
{
	struct se_cmd *cmd = req->end_io_data;
	struct pscsi_plugin_task *pt = cmd->priv;

	pt->pscsi_result = req->errors;
	pt->pscsi_resid = req->resid_len;

	cmd->scsi_status = FUNC4(pt->pscsi_result) << 1;
	if (cmd->scsi_status) {
		FUNC3("PSCSI Status Byte exception at cmd: %p CDB:"
			" 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
			pt->pscsi_result);
	}

	switch (FUNC1(pt->pscsi_result)) {
	case DID_OK:
		FUNC5(cmd, cmd->scsi_status);
		break;
	default:
		FUNC3("PSCSI Host Byte exception at cmd: %p CDB:"
			" 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
			pt->pscsi_result);
		FUNC5(cmd, SAM_STAT_CHECK_CONDITION);
		break;
	}

	FUNC0(req->q, req);
	FUNC2(pt);
}