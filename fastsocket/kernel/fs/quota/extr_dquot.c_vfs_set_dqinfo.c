
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_1__* dq_op; } ;
struct mem_dqinfo {int dqi_flags; int dqi_igrace; int dqi_bgrace; } ;
struct if_dqinfo {int dqi_valid; int dqi_flags; int dqi_igrace; int dqi_bgrace; } ;
struct TYPE_4__ {int dqonoff_mutex; struct mem_dqinfo* info; } ;
struct TYPE_3__ {int (* write_info ) (struct super_block*,int) ;} ;


 int DQF_MASK ;
 int ESRCH ;
 int IIF_BGRACE ;
 int IIF_FLAGS ;
 int IIF_IGRACE ;
 int dq_data_lock ;
 int mark_info_dirty (struct super_block*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* sb_dqopt (struct super_block*) ;
 int sb_has_quota_active (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*,int) ;

int vfs_set_dqinfo(struct super_block *sb, int type, struct if_dqinfo *ii)
{
 struct mem_dqinfo *mi;
 int err = 0;

 mutex_lock(&sb_dqopt(sb)->dqonoff_mutex);
 if (!sb_has_quota_active(sb, type)) {
  err = -ESRCH;
  goto out;
 }
 mi = sb_dqopt(sb)->info + type;
 spin_lock(&dq_data_lock);
 if (ii->dqi_valid & IIF_BGRACE)
  mi->dqi_bgrace = ii->dqi_bgrace;
 if (ii->dqi_valid & IIF_IGRACE)
  mi->dqi_igrace = ii->dqi_igrace;
 if (ii->dqi_valid & IIF_FLAGS)
  mi->dqi_flags = (mi->dqi_flags & ~DQF_MASK) |
    (ii->dqi_flags & DQF_MASK);
 spin_unlock(&dq_data_lock);
 mark_info_dirty(sb, type);

 sb->dq_op->write_info(sb, type);
out:
 mutex_unlock(&sb_dqopt(sb)->dqonoff_mutex);
 return err;
}
