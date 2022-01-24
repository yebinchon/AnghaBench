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
struct se_device {TYPE_1__* transport; } ;
struct se_cmd {unsigned char* t_task_cdb; unsigned int data_length; TYPE_2__* se_tfo; void* execute_cmd; void* sam_task_attr; struct se_device* se_dev; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_fabric_name ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_device_type ) (struct se_device*) ;} ;

/* Variables and functions */
#define  EXTENDED_COPY 154 
#define  INQUIRY 153 
#define  LOG_SELECT 152 
#define  LOG_SENSE 151 
#define  MAINTENANCE_IN 150 
#define  MAINTENANCE_OUT 149 
 unsigned char MI_REPORT_TARGET_PGS ; 
#define  MODE_SELECT 148 
#define  MODE_SELECT_10 147 
#define  MODE_SENSE 146 
#define  MODE_SENSE_10 145 
 unsigned char MO_SET_TARGET_PGS ; 
 void* MSG_HEAD_TAG ; 
#define  PERSISTENT_RESERVE_IN 144 
#define  PERSISTENT_RESERVE_OUT 143 
#define  READ_ATTRIBUTE 142 
#define  RECEIVE_COPY_RESULTS 141 
#define  RECEIVE_DIAGNOSTIC 140 
#define  RELEASE 139 
#define  RELEASE_10 138 
#define  REPORT_LUNS 137 
#define  REQUEST_SENSE 136 
#define  RESERVE 135 
#define  RESERVE_10 134 
#define  SECURITY_PROTOCOL_IN 133 
#define  SECURITY_PROTOCOL_OUT 132 
#define  SEND_DIAGNOSTIC 131 
 int /*<<< orphan*/  TCM_UNSUPPORTED_SCSI_OPCODE ; 
#define  TEST_UNIT_READY 130 
 int /*<<< orphan*/  TYPE_ROM ; 
#define  WRITE_ATTRIBUTE 129 
#define  WRITE_BUFFER 128 
 unsigned int FUNC0 (unsigned char*) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned char) ; 
 void* spc_emulate_inquiry ; 
 void* spc_emulate_modeselect ; 
 void* spc_emulate_modesense ; 
 void* spc_emulate_report_luns ; 
 void* spc_emulate_request_sense ; 
 void* spc_emulate_testunitready ; 
 int /*<<< orphan*/  FUNC3 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* target_emulate_report_target_port_groups ; 
 void* target_emulate_set_target_port_groups ; 
 void* target_scsi2_reservation_release ; 
 void* target_scsi2_reservation_reserve ; 
 void* target_scsi3_emulate_pr_in ; 
 void* target_scsi3_emulate_pr_out ; 

sense_reason_t
FUNC6(struct se_cmd *cmd, unsigned int *size)
{
	struct se_device *dev = cmd->se_dev;
	unsigned char *cdb = cmd->t_task_cdb;

	switch (cdb[0]) {
	case MODE_SELECT:
		*size = cdb[4];
		cmd->execute_cmd = spc_emulate_modeselect;
		break;
	case MODE_SELECT_10:
		*size = (cdb[7] << 8) + cdb[8];
		cmd->execute_cmd = spc_emulate_modeselect;
		break;
	case MODE_SENSE:
		*size = cdb[4];
		cmd->execute_cmd = spc_emulate_modesense;
		break;
	case MODE_SENSE_10:
		*size = (cdb[7] << 8) + cdb[8];
		cmd->execute_cmd = spc_emulate_modesense;
		break;
	case LOG_SELECT:
	case LOG_SENSE:
		*size = (cdb[7] << 8) + cdb[8];
		break;
	case PERSISTENT_RESERVE_IN:
		*size = (cdb[7] << 8) + cdb[8];
		cmd->execute_cmd = target_scsi3_emulate_pr_in;
		break;
	case PERSISTENT_RESERVE_OUT:
		*size = (cdb[7] << 8) + cdb[8];
		cmd->execute_cmd = target_scsi3_emulate_pr_out;
		break;
	case RELEASE:
	case RELEASE_10:
		if (cdb[0] == RELEASE_10)
			*size = (cdb[7] << 8) | cdb[8];
		else
			*size = cmd->data_length;

		cmd->execute_cmd = target_scsi2_reservation_release;
		break;
	case RESERVE:
	case RESERVE_10:
		/*
		 * The SPC-2 RESERVE does not contain a size in the SCSI CDB.
		 * Assume the passthrough or $FABRIC_MOD will tell us about it.
		 */
		if (cdb[0] == RESERVE_10)
			*size = (cdb[7] << 8) | cdb[8];
		else
			*size = cmd->data_length;

		cmd->execute_cmd = target_scsi2_reservation_reserve;
		break;
	case REQUEST_SENSE:
		*size = cdb[4];
		cmd->execute_cmd = spc_emulate_request_sense;
		break;
	case INQUIRY:
		*size = (cdb[3] << 8) + cdb[4];

		/*
		 * Do implict HEAD_OF_QUEUE processing for INQUIRY.
		 * See spc4r17 section 5.3
		 */
		cmd->sam_task_attr = MSG_HEAD_TAG;
		cmd->execute_cmd = spc_emulate_inquiry;
		break;
	case SECURITY_PROTOCOL_IN:
	case SECURITY_PROTOCOL_OUT:
		*size = (cdb[6] << 24) | (cdb[7] << 16) | (cdb[8] << 8) | cdb[9];
		break;
	case EXTENDED_COPY:
	case READ_ATTRIBUTE:
	case RECEIVE_COPY_RESULTS:
	case WRITE_ATTRIBUTE:
		*size = (cdb[10] << 24) | (cdb[11] << 16) |
		       (cdb[12] << 8) | cdb[13];
		break;
	case RECEIVE_DIAGNOSTIC:
	case SEND_DIAGNOSTIC:
		*size = (cdb[3] << 8) | cdb[4];
		break;
	case WRITE_BUFFER:
		*size = (cdb[6] << 16) + (cdb[7] << 8) + cdb[8];
		break;
	case REPORT_LUNS:
		cmd->execute_cmd = spc_emulate_report_luns;
		*size = (cdb[6] << 24) | (cdb[7] << 16) | (cdb[8] << 8) | cdb[9];
		/*
		 * Do implict HEAD_OF_QUEUE processing for REPORT_LUNS
		 * See spc4r17 section 5.3
		 */
		cmd->sam_task_attr = MSG_HEAD_TAG;
		break;
	case TEST_UNIT_READY:
		cmd->execute_cmd = spc_emulate_testunitready;
		*size = 0;
		break;
	case MAINTENANCE_IN:
		if (dev->transport->get_device_type(dev) != TYPE_ROM) {
			/*
			 * MAINTENANCE_IN from SCC-2
			 * Check for emulated MI_REPORT_TARGET_PGS
			 */
			if ((cdb[1] & 0x1f) == MI_REPORT_TARGET_PGS) {
				cmd->execute_cmd =
					target_emulate_report_target_port_groups;
			}
			*size = FUNC1(&cdb[6]);
		} else {
			/*
			 * GPCMD_SEND_KEY from multi media commands
			 */
			*size = FUNC0(&cdb[8]);
		}
		break;
	case MAINTENANCE_OUT:
		if (dev->transport->get_device_type(dev) != TYPE_ROM) {
			/*
			 * MAINTENANCE_OUT from SCC-2
			 * Check for emulated MO_SET_TARGET_PGS.
			 */
			if (cdb[1] == MO_SET_TARGET_PGS) {
				cmd->execute_cmd =
					target_emulate_set_target_port_groups;
			}
			*size = FUNC1(&cdb[6]);
		} else {
			/*
			 * GPCMD_SEND_KEY from multi media commands
			 */
			*size = FUNC0(&cdb[8]);
		}
		break;
	default:
		FUNC2("TARGET_CORE[%s]: Unsupported SCSI Opcode"
			" 0x%02x, sending CHECK_CONDITION.\n",
			cmd->se_tfo->get_fabric_name(), cdb[0]);
		return TCM_UNSUPPORTED_SCSI_OPCODE;
	}

	return 0;
}