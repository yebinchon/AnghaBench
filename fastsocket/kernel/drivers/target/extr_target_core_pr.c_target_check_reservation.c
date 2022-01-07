
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_device {int dev_reservation_flags; int dev_reservation_lock; TYPE_2__* transport; TYPE_1__* se_hba; } ;
struct se_cmd {int se_sess; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_4__ {scalar_t__ transport_type; } ;
struct TYPE_3__ {int hba_flags; } ;


 int DRF_SPC2_RESERVATIONS ;
 int HBA_FLAGS_INTERNAL_USE ;
 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int target_scsi2_reservation_check (struct se_cmd*) ;
 int target_scsi3_pr_reservation_check (struct se_cmd*) ;

sense_reason_t
target_check_reservation(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 sense_reason_t ret;

 if (!cmd->se_sess)
  return 0;
 if (dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE)
  return 0;
 if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
  return 0;

 spin_lock(&dev->dev_reservation_lock);
 if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)
  ret = target_scsi2_reservation_check(cmd);
 else
  ret = target_scsi3_pr_reservation_check(cmd);
 spin_unlock(&dev->dev_reservation_lock);

 return ret;
}
