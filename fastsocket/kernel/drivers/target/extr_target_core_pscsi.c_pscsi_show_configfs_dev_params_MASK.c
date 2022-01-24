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
struct se_device {TYPE_1__* se_hba; } ;
struct scsi_device {int* vendor; int* model; int* rev; } ;
struct pscsi_hba_virt {scalar_t__ phv_mode; } ;
struct pscsi_dev_virt {int pdv_host_id; int pdv_channel_id; int pdv_target_id; int pdv_lun_id; struct scsi_device* pdv_sd; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct pscsi_hba_virt* hba_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PHV_VIRTUAL_HOST_ID ; 
 struct pscsi_dev_virt* FUNC1 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,char*,...) ; 
 int FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct se_device *dev, char *b)
{
	struct pscsi_hba_virt *phv = dev->se_hba->hba_ptr;
	struct pscsi_dev_virt *pdv = FUNC1(dev);
	struct scsi_device *sd = pdv->pdv_sd;
	unsigned char host_id[16];
	ssize_t bl;
	int i;

	if (phv->phv_mode == PHV_VIRTUAL_HOST_ID)
		FUNC2(host_id, 16, "%d", pdv->pdv_host_id);
	else
		FUNC2(host_id, 16, "PHBA Mode");

	bl = FUNC3(b, "SCSI Device Bus Location:"
		" Channel ID: %d Target ID: %d LUN: %d Host ID: %s\n",
		pdv->pdv_channel_id, pdv->pdv_target_id, pdv->pdv_lun_id,
		host_id);

	if (sd) {
		bl += FUNC3(b + bl, "        ");
		bl += FUNC3(b + bl, "Vendor: ");
		for (i = 0; i < 8; i++) {
			if (FUNC0(sd->vendor[i]))   /* printable character? */
				bl += FUNC3(b + bl, "%c", sd->vendor[i]);
			else
				bl += FUNC3(b + bl, " ");
		}
		bl += FUNC3(b + bl, " Model: ");
		for (i = 0; i < 16; i++) {
			if (FUNC0(sd->model[i]))   /* printable character ? */
				bl += FUNC3(b + bl, "%c", sd->model[i]);
			else
				bl += FUNC3(b + bl, " ");
		}
		bl += FUNC3(b + bl, " Rev: ");
		for (i = 0; i < 4; i++) {
			if (FUNC0(sd->rev[i]))   /* printable character ? */
				bl += FUNC3(b + bl, "%c", sd->rev[i]);
			else
				bl += FUNC3(b + bl, " ");
		}
		bl += FUNC3(b + bl, "\n");
	}
	return bl;
}