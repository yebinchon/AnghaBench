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
struct se_cmd {scalar_t__ execute_cmd; TYPE_2__* se_dev; } ;
struct sbc_ops {scalar_t__ execute_write_same; scalar_t__ execute_write_same_unmap; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_3__ {unsigned int max_write_same_len; } ;
struct TYPE_4__ {TYPE_1__ dev_attrib; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_UNSUPPORTED_SCSI_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct se_cmd*) ; 

__attribute__((used)) static sense_reason_t
FUNC3(struct se_cmd *cmd, unsigned char *flags, struct sbc_ops *ops)
{
	unsigned int sectors = FUNC2(cmd);

	if ((flags[0] & 0x04) || (flags[0] & 0x02)) {
		FUNC0("WRITE_SAME PBDATA and LBDATA"
			" bits not supported for Block Discard"
			" Emulation\n");
		return TCM_UNSUPPORTED_SCSI_OPCODE;
	}
	if (sectors > cmd->se_dev->dev_attrib.max_write_same_len) {
		FUNC1("WRITE_SAME sectors: %u exceeds max_write_same_len: %u\n",
			sectors, cmd->se_dev->dev_attrib.max_write_same_len);
		return TCM_INVALID_CDB_FIELD;
	}
	/*
	 * Special case for WRITE_SAME w/ UNMAP=1 that ends up getting
	 * translated into block discard requests within backend code.
	 */
	if (flags[0] & 0x08) {
		if (!ops->execute_write_same_unmap)
			return TCM_UNSUPPORTED_SCSI_OPCODE;

		cmd->execute_cmd = ops->execute_write_same_unmap;
		return 0;
	}
	if (!ops->execute_write_same)
		return TCM_UNSUPPORTED_SCSI_OPCODE;

	cmd->execute_cmd = ops->execute_write_same;
	return 0;
}