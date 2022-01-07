
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int t_task_lba; int se_dev; } ;
struct iblock_dev {int ibd_bd; } ;
typedef int sense_reason_t ;


 int GFP_KERNEL ;
 int GOOD ;
 struct iblock_dev* IBLOCK_DEV (int ) ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int blkdev_issue_discard (int ,int ,int ,int ,int ) ;
 int pr_warn (char*,int) ;
 int sbc_get_write_same_sectors (struct se_cmd*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static sense_reason_t
iblock_execute_write_same_unmap(struct se_cmd *cmd)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(cmd->se_dev);
 int rc;

 rc = blkdev_issue_discard(ib_dev->ibd_bd, cmd->t_task_lba,
   sbc_get_write_same_sectors(cmd), GFP_KERNEL, 0);
 if (rc < 0) {
  pr_warn("blkdev_issue_discard() failed: %d\n", rc);
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }

 target_complete_cmd(cmd, GOOD);
 return 0;
}
