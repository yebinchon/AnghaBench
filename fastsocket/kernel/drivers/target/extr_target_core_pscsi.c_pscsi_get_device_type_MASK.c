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
typedef  int /*<<< orphan*/  u32 ;
struct se_device {int dummy; } ;
struct scsi_device {int /*<<< orphan*/  type; } ;
struct pscsi_dev_virt {struct scsi_device* pdv_sd; } ;

/* Variables and functions */
 struct pscsi_dev_virt* FUNC0 (struct se_device*) ; 

__attribute__((used)) static u32 FUNC1(struct se_device *dev)
{
	struct pscsi_dev_virt *pdv = FUNC0(dev);
	struct scsi_device *sd = pdv->pdv_sd;

	return sd->type;
}