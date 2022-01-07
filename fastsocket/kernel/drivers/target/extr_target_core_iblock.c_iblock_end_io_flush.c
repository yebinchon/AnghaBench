
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;
struct bio {struct se_cmd* bi_private; } ;


 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int bio_put (struct bio*) ;
 int pr_err (char*,int) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static void iblock_end_io_flush(struct bio *bio, int err)
{
 struct se_cmd *cmd = bio->bi_private;

 if (err)
  pr_err("IBLOCK: cache flush failed: %d\n", err);

 if (cmd) {
  if (err)
   target_complete_cmd(cmd, SAM_STAT_CHECK_CONDITION);
  else
   target_complete_cmd(cmd, SAM_STAT_GOOD);
 }

 bio_put(bio);
}
