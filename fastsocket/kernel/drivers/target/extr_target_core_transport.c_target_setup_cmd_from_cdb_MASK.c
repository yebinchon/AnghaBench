#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct se_device {TYPE_1__* transport; } ;
struct se_cmd {TYPE_4__* se_lun; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  se_cmd_flags; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/ * t_task_cdb; int /*<<< orphan*/ * __t_task_cdb; struct se_device* se_dev; } ;
typedef  scalar_t__ sense_reason_t ;
struct TYPE_8__ {int /*<<< orphan*/  lun_sep_lock; TYPE_3__* lun_sep; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmd_pdus; } ;
struct TYPE_7__ {TYPE_2__ sep_stats; } ;
struct TYPE_5__ {scalar_t__ (* parse_cdb ) (struct se_cmd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SAM_STAT_RESERVATION_CONFLICT ; 
 int /*<<< orphan*/  SCF_SUPPORTED_SAM_OPCODE ; 
 unsigned long SCSI_MAX_VARLEN_CDB_SIZE ; 
 scalar_t__ TCM_INVALID_CDB_FIELD ; 
 scalar_t__ TCM_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct se_cmd*) ; 
 scalar_t__ FUNC9 (struct se_cmd*) ; 
 scalar_t__ FUNC10 (struct se_cmd*) ; 
 scalar_t__ FUNC11 (struct se_cmd*) ; 
 scalar_t__ FUNC12 (struct se_cmd*) ; 

sense_reason_t
FUNC13(struct se_cmd *cmd, unsigned char *cdb)
{
	struct se_device *dev = cmd->se_dev;
	unsigned long flags;
	sense_reason_t ret;

	/*
	 * Ensure that the received CDB is less than the max (252 + 8) bytes
	 * for VARIABLE_LENGTH_CMD
	 */
	if (FUNC3(cdb) > SCSI_MAX_VARLEN_CDB_SIZE) {
		FUNC2("Received SCSI CDB with command_size: %d that"
			" exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\n",
			FUNC3(cdb), SCSI_MAX_VARLEN_CDB_SIZE);
		return TCM_INVALID_CDB_FIELD;
	}
	/*
	 * If the received CDB is larger than TCM_MAX_COMMAND_SIZE,
	 * allocate the additional extended CDB buffer now..  Otherwise
	 * setup the pointer from __t_task_cdb to t_task_cdb.
	 */
	if (FUNC3(cdb) > sizeof(cmd->__t_task_cdb)) {
		cmd->t_task_cdb = FUNC0(FUNC3(cdb),
						GFP_KERNEL);
		if (!cmd->t_task_cdb) {
			FUNC2("Unable to allocate cmd->t_task_cdb"
				" %u > sizeof(cmd->__t_task_cdb): %lu ops\n",
				FUNC3(cdb),
				(unsigned long)sizeof(cmd->__t_task_cdb));
			return TCM_OUT_OF_RESOURCES;
		}
	} else
		cmd->t_task_cdb = &cmd->__t_task_cdb[0];
	/*
	 * Copy the original CDB into cmd->
	 */
	FUNC1(cmd->t_task_cdb, cdb, FUNC3(cdb));

	/*
	 * Check for an existing UNIT ATTENTION condition
	 */
	ret = FUNC11(cmd);
	if (ret)
		return ret;

	ret = FUNC9(cmd);
	if (ret)
		return ret;

	ret = FUNC10(cmd);
	if (ret) {
		cmd->scsi_status = SAM_STAT_RESERVATION_CONFLICT;
		return ret;
	}

	ret = dev->transport->parse_cdb(cmd);
	if (ret)
		return ret;

	ret = FUNC12(cmd);
	if (ret)
		return ret;

	FUNC5(&cmd->t_state_lock, flags);
	cmd->se_cmd_flags |= SCF_SUPPORTED_SAM_OPCODE;
	FUNC7(&cmd->t_state_lock, flags);

	FUNC4(&cmd->se_lun->lun_sep_lock);
	if (cmd->se_lun->lun_sep)
		cmd->se_lun->lun_sep->sep_stats.cmd_pdus++;
	FUNC6(&cmd->se_lun->lun_sep_lock);
	return 0;
}