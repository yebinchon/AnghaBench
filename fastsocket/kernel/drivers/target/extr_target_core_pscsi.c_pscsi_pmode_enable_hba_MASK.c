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
struct se_hba {int /*<<< orphan*/  hba_id; struct pscsi_hba_virt* hba_ptr; } ;
struct pscsi_hba_virt {int /*<<< orphan*/  phv_mode; struct Scsi_Host* phv_lld_host; int /*<<< orphan*/  phv_host_id; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  PHV_LLD_SCSI_HOST_NO ; 
 int /*<<< orphan*/  PHV_VIRTUAL_HOST_ID ; 
 int FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC6(struct se_hba *hba, unsigned long mode_flag)
{
	struct pscsi_hba_virt *phv = hba->hba_ptr;
	struct Scsi_Host *sh = phv->phv_lld_host;
	/*
	 * Release the struct Scsi_Host
	 */
	if (!mode_flag) {
		if (!sh)
			return 0;

		phv->phv_lld_host = NULL;
		phv->phv_mode = PHV_VIRTUAL_HOST_ID;

		FUNC2("CORE_HBA[%d] - Disabled pSCSI HBA Passthrough"
			" %s\n", hba->hba_id, (sh->hostt->name) ?
			(sh->hostt->name) : "Unknown");

		FUNC5(sh);
		return 0;
	}
	/*
	 * Otherwise, locate struct Scsi_Host from the original passed
	 * pSCSI Host ID and enable for phba mode
	 */
	sh = FUNC4(phv->phv_host_id);
	if (FUNC0(sh)) {
		FUNC3("pSCSI: Unable to locate SCSI Host for"
			" phv_host_id: %d\n", phv->phv_host_id);
		return FUNC1(sh);
	}

	phv->phv_lld_host = sh;
	phv->phv_mode = PHV_LLD_SCSI_HOST_NO;

	FUNC2("CORE_HBA[%d] - Enabled pSCSI HBA Passthrough %s\n",
		hba->hba_id, (sh->hostt->name) ? (sh->hostt->name) : "Unknown");

	return 1;
}