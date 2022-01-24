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
struct se_device {int dev_reservation_flags; int /*<<< orphan*/  dev_reservation_lock; TYPE_2__* transport; TYPE_1__* se_hba; } ;
struct se_cmd {int /*<<< orphan*/  se_sess; struct se_device* se_dev; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_4__ {scalar_t__ transport_type; } ;
struct TYPE_3__ {int hba_flags; } ;

/* Variables and functions */
 int DRF_SPC2_RESERVATIONS ; 
 int HBA_FLAGS_INTERNAL_USE ; 
 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*) ; 

sense_reason_t
FUNC4(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;
	sense_reason_t ret;

	if (!cmd->se_sess)
		return 0;
	if (dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE)
		return 0;
	if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
		return 0;

	FUNC0(&dev->dev_reservation_lock);
	if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)
		ret = FUNC2(cmd);
	else
		ret = FUNC3(cmd);
	FUNC1(&dev->dev_reservation_lock);

	return ret;
}