
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_op; } ;
struct TYPE_3__ {int dqi_free_entry; int dqi_free_blk; int dqi_blocks; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; int dqi_syncms; } ;
struct ocfs2_global_disk_dqinfo {void* dqi_free_entry; void* dqi_free_blk; void* dqi_blocks; void* dqi_syncms; void* dqi_igrace; void* dqi_bgrace; } ;
struct mem_dqinfo {int dqi_igrace; int dqi_bgrace; int dqi_flags; struct ocfs2_mem_dqinfo* dqi_priv; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* quota_write ) (struct super_block*,int,char*,int,int ) ;} ;


 int DQF_INFO_DIRTY ;
 int EIO ;
 int ML_ERROR ;
 int OCFS2_GLOBAL_INFO_OFF ;
 void* cpu_to_le32 (int ) ;
 int dq_data_lock ;
 int mlog (int ,char*) ;
 struct mem_dqinfo* sb_dqinfo (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*,int,char*,int,int ) ;

__attribute__((used)) static int __ocfs2_global_write_info(struct super_block *sb, int type)
{
 struct mem_dqinfo *info = sb_dqinfo(sb, type);
 struct ocfs2_mem_dqinfo *oinfo = info->dqi_priv;
 struct ocfs2_global_disk_dqinfo dinfo;
 ssize_t size;

 spin_lock(&dq_data_lock);
 info->dqi_flags &= ~DQF_INFO_DIRTY;
 dinfo.dqi_bgrace = cpu_to_le32(info->dqi_bgrace);
 dinfo.dqi_igrace = cpu_to_le32(info->dqi_igrace);
 spin_unlock(&dq_data_lock);
 dinfo.dqi_syncms = cpu_to_le32(oinfo->dqi_syncms);
 dinfo.dqi_blocks = cpu_to_le32(oinfo->dqi_gi.dqi_blocks);
 dinfo.dqi_free_blk = cpu_to_le32(oinfo->dqi_gi.dqi_free_blk);
 dinfo.dqi_free_entry = cpu_to_le32(oinfo->dqi_gi.dqi_free_entry);
 size = sb->s_op->quota_write(sb, type, (char *)&dinfo,
         sizeof(struct ocfs2_global_disk_dqinfo),
         OCFS2_GLOBAL_INFO_OFF);
 if (size != sizeof(struct ocfs2_global_disk_dqinfo)) {
  mlog(ML_ERROR, "Cannot write global quota info structure\n");
  if (size >= 0)
   size = -EIO;
  return size;
 }
 return 0;
}
