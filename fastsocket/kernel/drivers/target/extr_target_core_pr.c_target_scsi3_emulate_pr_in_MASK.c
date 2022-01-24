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
struct se_cmd {int* t_task_cdb; TYPE_1__* se_dev; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_2__ {int dev_reservation_flags; } ;

/* Variables and functions */
 int DRF_SPC2_RESERVATIONS ; 
 int /*<<< orphan*/  GOOD ; 
#define  PRI_READ_FULL_STATUS 131 
#define  PRI_READ_KEYS 130 
#define  PRI_READ_RESERVATION 129 
#define  PRI_REPORT_CAPABILITIES 128 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_RESERVATION_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,int /*<<< orphan*/ ) ; 

sense_reason_t
FUNC6(struct se_cmd *cmd)
{
	sense_reason_t ret;

	/*
	 * Following spc2r20 5.5.1 Reservations overview:
	 *
	 * If a logical unit has been reserved by any RESERVE command and is
	 * still reserved by any initiator, all PERSISTENT RESERVE IN and all
	 * PERSISTENT RESERVE OUT commands shall conflict regardless of
	 * initiator or service action and shall terminate with a RESERVATION
	 * CONFLICT status.
	 */
	if (cmd->se_dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS) {
		FUNC4("Received PERSISTENT_RESERVE CDB while legacy"
			" SPC-2 reservation is held, returning"
			" RESERVATION_CONFLICT\n");
		return TCM_RESERVATION_CONFLICT;
	}

	switch (cmd->t_task_cdb[1] & 0x1f) {
	case PRI_READ_KEYS:
		ret = FUNC1(cmd);
		break;
	case PRI_READ_RESERVATION:
		ret = FUNC2(cmd);
		break;
	case PRI_REPORT_CAPABILITIES:
		ret = FUNC3(cmd);
		break;
	case PRI_READ_FULL_STATUS:
		ret = FUNC0(cmd);
		break;
	default:
		FUNC4("Unknown PERSISTENT_RESERVE_IN service"
			" action: 0x%02x\n", cmd->t_task_cdb[1] & 0x1f);
		return TCM_INVALID_CDB_FIELD;
	}

	if (!ret)
		FUNC5(cmd, GOOD);
	return ret;
}