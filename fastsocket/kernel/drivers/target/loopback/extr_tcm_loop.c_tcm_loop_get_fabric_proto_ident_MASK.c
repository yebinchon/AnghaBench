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
typedef  int /*<<< orphan*/  u8 ;
struct tcm_loop_tpg {struct tcm_loop_hba* tl_hba; } ;
struct tcm_loop_hba {int tl_proto_id; } ;
struct se_portal_group {struct tcm_loop_tpg* se_tpg_fabric_ptr; } ;

/* Variables and functions */
#define  SCSI_PROTOCOL_FCP 130 
#define  SCSI_PROTOCOL_ISCSI 129 
#define  SCSI_PROTOCOL_SAS 128 
 int /*<<< orphan*/  FUNC0 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct se_portal_group*) ; 

__attribute__((used)) static u8 FUNC4(struct se_portal_group *se_tpg)
{
	struct tcm_loop_tpg *tl_tpg = se_tpg->se_tpg_fabric_ptr;
	struct tcm_loop_hba *tl_hba = tl_tpg->tl_hba;
	/*
	 * tl_proto_id is set at tcm_loop_configfs.c:tcm_loop_make_scsi_hba()
	 * time based on the protocol dependent prefix of the passed configfs group.
	 *
	 * Based upon tl_proto_id, TCM_Loop emulates the requested fabric
	 * ProtocolID using target_core_fabric_lib.c symbols.
	 */
	switch (tl_hba->tl_proto_id) {
	case SCSI_PROTOCOL_SAS:
		return FUNC3(se_tpg);
	case SCSI_PROTOCOL_FCP:
		return FUNC0(se_tpg);
	case SCSI_PROTOCOL_ISCSI:
		return FUNC1(se_tpg);
	default:
		FUNC2("Unknown tl_proto_id: 0x%02x, using"
			" SAS emulation\n", tl_hba->tl_proto_id);
		break;
	}

	return FUNC3(se_tpg);
}