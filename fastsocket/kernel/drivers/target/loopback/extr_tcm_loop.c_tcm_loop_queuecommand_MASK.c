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
struct tcm_loop_cmd {int /*<<< orphan*/  work; struct scsi_cmnd* sc; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * cmnd; TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  channel; int /*<<< orphan*/  id; TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcm_loop_cmd* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 void FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  tcm_loop_cmd_cache ; 
 int /*<<< orphan*/  tcm_loop_submission_work ; 
 int /*<<< orphan*/  tcm_loop_workqueue ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd *sc, void (* done)(struct scsi_cmnd *))
{
	struct tcm_loop_cmd *tl_cmd;

	FUNC0(!done);
	sc->scsi_done = done;

	FUNC3("tcm_loop_queuecommand() %d:%d:%d:%d got CDB: 0x%02x"
		" scsi_buf_len: %u\n", sc->device->host->host_no,
		sc->device->id, sc->device->channel, sc->device->lun,
		sc->cmnd[0], FUNC6(sc));

	tl_cmd = FUNC2(tcm_loop_cmd_cache, GFP_ATOMIC);
	if (!tl_cmd) {
		FUNC4("Unable to allocate struct tcm_loop_cmd\n");
		FUNC7(sc, DID_ERROR);
		sc->scsi_done(sc);
		return 0;
	}

	tl_cmd->sc = sc;
	FUNC1(&tl_cmd->work, tcm_loop_submission_work);
	FUNC5(tcm_loop_workqueue, &tl_cmd->work);
	return 0;
}