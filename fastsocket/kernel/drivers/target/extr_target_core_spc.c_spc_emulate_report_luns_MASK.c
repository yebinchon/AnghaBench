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
typedef  size_t u32 ;
struct se_session {TYPE_1__* se_node_acl; } ;
struct se_dev_entry {int lun_flags; int /*<<< orphan*/  mapped_lun; } ;
struct se_cmd {int data_length; struct se_session* se_sess; } ;
struct scsi_lun {int dummy; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_2__ {int /*<<< orphan*/  device_list_lock; struct se_dev_entry** device_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOOD ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int TRANSPORT_LUNFLAGS_INITIATOR_ACCESS ; 
 size_t TRANSPORT_MAX_LUNS_PER_TPG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*) ; 

sense_reason_t FUNC7(struct se_cmd *cmd)
{
	struct se_dev_entry *deve;
	struct se_session *sess = cmd->se_sess;
	unsigned char *buf;
	u32 lun_count = 0, offset = 8, i;

	if (cmd->data_length < 16) {
		FUNC1("REPORT LUNS allocation length %u too small\n",
			cmd->data_length);
		return TCM_INVALID_CDB_FIELD;
	}

	buf = FUNC5(cmd);
	if (!buf)
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

	/*
	 * If no struct se_session pointer is present, this struct se_cmd is
	 * coming via a target_core_mod PASSTHROUGH op, and not through
	 * a $FABRIC_MOD.  In that case, report LUN=0 only.
	 */
	if (!sess) {
		FUNC0(0, (struct scsi_lun *)&buf[offset]);
		lun_count = 1;
		goto done;
	}

	FUNC2(&sess->se_node_acl->device_list_lock);
	for (i = 0; i < TRANSPORT_MAX_LUNS_PER_TPG; i++) {
		deve = sess->se_node_acl->device_list[i];
		if (!(deve->lun_flags & TRANSPORT_LUNFLAGS_INITIATOR_ACCESS))
			continue;
		/*
		 * We determine the correct LUN LIST LENGTH even once we
		 * have reached the initial allocation length.
		 * See SPC2-R20 7.19.
		 */
		lun_count++;
		if ((offset + 8) > cmd->data_length)
			continue;

		FUNC0(deve->mapped_lun, (struct scsi_lun *)&buf[offset]);
		offset += 8;
	}
	FUNC3(&sess->se_node_acl->device_list_lock);

	/*
	 * See SPC3 r07, page 159.
	 */
done:
	lun_count *= 8;
	buf[0] = ((lun_count >> 24) & 0xff);
	buf[1] = ((lun_count >> 16) & 0xff);
	buf[2] = ((lun_count >> 8) & 0xff);
	buf[3] = (lun_count & 0xff);
	FUNC6(cmd);

	FUNC4(cmd, GOOD);
	return 0;
}