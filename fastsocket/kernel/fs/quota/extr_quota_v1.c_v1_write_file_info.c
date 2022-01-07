
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v1_disk_dqblk {int dqb_btime; int dqb_itime; } ;
struct super_block {TYPE_2__* s_op; } ;
struct quota_info {TYPE_1__* info; } ;
struct TYPE_4__ {int (* quota_read ) (struct super_block*,int,char*,int,int ) ;int (* quota_write ) (struct super_block*,int,char*,int,int ) ;} ;
struct TYPE_3__ {int dqi_bgrace; int dqi_igrace; int dqi_flags; } ;


 int DQF_INFO_DIRTY ;
 int EIO ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int stub1 (struct super_block*,int,char*,int,int ) ;
 int stub2 (struct super_block*,int,char*,int,int ) ;
 int v1_dqoff (int ) ;

__attribute__((used)) static int v1_write_file_info(struct super_block *sb, int type)
{
 struct quota_info *dqopt = sb_dqopt(sb);
 struct v1_disk_dqblk dqblk;
 int ret;

 dqopt->info[type].dqi_flags &= ~DQF_INFO_DIRTY;
 ret = sb->s_op->quota_read(sb, type, (char *)&dqblk,
    sizeof(struct v1_disk_dqblk), v1_dqoff(0));
 if (ret != sizeof(struct v1_disk_dqblk)) {
  if (ret >= 0)
   ret = -EIO;
  goto out;
 }
 dqblk.dqb_itime = dqopt->info[type].dqi_igrace;
 dqblk.dqb_btime = dqopt->info[type].dqi_bgrace;
 ret = sb->s_op->quota_write(sb, type, (char *)&dqblk,
       sizeof(struct v1_disk_dqblk), v1_dqoff(0));
 if (ret == sizeof(struct v1_disk_dqblk))
  ret = 0;
 else if (ret > 0)
  ret = -EIO;
out:
 return ret;
}
