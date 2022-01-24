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
struct se_hba {struct pscsi_hba_virt* hba_ptr; int /*<<< orphan*/  hba_id; } ;
struct pscsi_hba_virt {struct Scsi_Host* phv_lld_host; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pscsi_hba_virt*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC3(struct se_hba *hba)
{
	struct pscsi_hba_virt *phv = hba->hba_ptr;
	struct Scsi_Host *scsi_host = phv->phv_lld_host;

	if (scsi_host) {
		FUNC2(scsi_host);

		FUNC1("CORE_HBA[%d] - Detached SCSI HBA: %s from"
			" Generic Target Core\n", hba->hba_id,
			(scsi_host->hostt->name) ? (scsi_host->hostt->name) :
			"Unknown");
	} else
		FUNC1("CORE_HBA[%d] - Detached Virtual SCSI HBA"
			" from Generic Target Core\n", hba->hba_id);

	FUNC0(phv);
	hba->hba_ptr = NULL;
}