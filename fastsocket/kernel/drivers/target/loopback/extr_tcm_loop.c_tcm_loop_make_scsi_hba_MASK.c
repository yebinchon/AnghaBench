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
struct se_wwn {int dummy; } ;
struct tcm_loop_hba {struct se_wwn tl_hba_wwn; struct Scsi_Host* sh; int /*<<< orphan*/ * tl_wwn_address; int /*<<< orphan*/  tl_proto_id; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct se_wwn* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_FCP ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_ISCSI ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_SAS ; 
 scalar_t__ TL_WWN_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct tcm_loop_hba*) ; 
 struct tcm_loop_hba* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcm_loop_hba*) ; 
 int /*<<< orphan*/  tcm_loop_hba_no_cnt ; 
 int FUNC9 (struct tcm_loop_hba*,int /*<<< orphan*/ ) ; 

struct se_wwn *FUNC10(
	struct target_fabric_configfs *tf,
	struct config_group *group,
	const char *name)
{
	struct tcm_loop_hba *tl_hba;
	struct Scsi_Host *sh;
	char *ptr;
	int ret, off = 0;

	tl_hba = FUNC2(sizeof(struct tcm_loop_hba), GFP_KERNEL);
	if (!tl_hba) {
		FUNC4("Unable to allocate struct tcm_loop_hba\n");
		return FUNC0(-ENOMEM);
	}
	/*
	 * Determine the emulated Protocol Identifier and Target Port Name
	 * based on the incoming configfs directory name.
	 */
	ptr = FUNC7(name, "naa.");
	if (ptr) {
		tl_hba->tl_proto_id = SCSI_PROTOCOL_SAS;
		goto check_len;
	}
	ptr = FUNC7(name, "fc.");
	if (ptr) {
		tl_hba->tl_proto_id = SCSI_PROTOCOL_FCP;
		off = 3; /* Skip over "fc." */
		goto check_len;
	}
	ptr = FUNC7(name, "iqn.");
	if (!ptr) {
		FUNC4("Unable to locate prefix for emulated Target "
				"Port: %s\n", name);
		ret = -EINVAL;
		goto out;
	}
	tl_hba->tl_proto_id = SCSI_PROTOCOL_ISCSI;

check_len:
	if (FUNC6(name) >= TL_WWN_ADDR_LEN) {
		FUNC4("Emulated NAA %s Address: %s, exceeds"
			" max: %d\n", name, FUNC8(tl_hba),
			TL_WWN_ADDR_LEN);
		ret = -EINVAL;
		goto out;
	}
	FUNC5(&tl_hba->tl_wwn_address[0], TL_WWN_ADDR_LEN, "%s", &name[off]);

	/*
	 * Call device_register(tl_hba->dev) to register the emulated
	 * Linux/SCSI LLD of type struct Scsi_Host at tl_hba->sh after
	 * device_register() callbacks in tcm_loop_driver_probe()
	 */
	ret = FUNC9(tl_hba, tcm_loop_hba_no_cnt);
	if (ret)
		goto out;

	sh = tl_hba->sh;
	tcm_loop_hba_no_cnt++;
	FUNC3("TCM_Loop_ConfigFS: Allocated emulated Target"
		" %s Address: %s at Linux/SCSI Host ID: %d\n",
		FUNC8(tl_hba), name, sh->host_no);

	return &tl_hba->tl_hba_wwn;
out:
	FUNC1(tl_hba);
	return FUNC0(ret);
}