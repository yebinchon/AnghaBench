
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int* t_task_cdb; int se_dev; } ;
struct iblock_dev {int ibd_bd; } ;
struct bio {struct se_cmd* bi_private; int bi_bdev; int bi_end_io; } ;
typedef int sense_reason_t ;


 int GFP_KERNEL ;
 struct iblock_dev* IBLOCK_DEV (int ) ;
 int SAM_STAT_GOOD ;
 int WRITE_FLUSH ;
 struct bio* bio_alloc (int ,int ) ;
 int iblock_end_io_flush ;
 int submit_bio (int ,struct bio*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static sense_reason_t
iblock_execute_sync_cache(struct se_cmd *cmd)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(cmd->se_dev);
 int immed = (cmd->t_task_cdb[1] & 0x2);
 struct bio *bio;





 if (immed)
  target_complete_cmd(cmd, SAM_STAT_GOOD);

 bio = bio_alloc(GFP_KERNEL, 0);
 bio->bi_end_io = iblock_end_io_flush;
 bio->bi_bdev = ib_dev->ibd_bd;
 if (!immed)
  bio->bi_private = cmd;
 submit_bio(WRITE_FLUSH, bio);
 return 0;
}
