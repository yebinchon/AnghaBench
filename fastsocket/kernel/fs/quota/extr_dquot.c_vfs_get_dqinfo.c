
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct mem_dqinfo {int dqi_flags; int dqi_igrace; int dqi_bgrace; } ;
struct if_dqinfo {int dqi_flags; int dqi_valid; int dqi_igrace; int dqi_bgrace; } ;
struct TYPE_2__ {int dqonoff_mutex; struct mem_dqinfo* info; } ;


 int DQF_MASK ;
 int ESRCH ;
 int IIF_ALL ;
 int dq_data_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* sb_dqopt (struct super_block*) ;
 int sb_has_quota_active (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int vfs_get_dqinfo(struct super_block *sb, int type, struct if_dqinfo *ii)
{
 struct mem_dqinfo *mi;

 mutex_lock(&sb_dqopt(sb)->dqonoff_mutex);
 if (!sb_has_quota_active(sb, type)) {
  mutex_unlock(&sb_dqopt(sb)->dqonoff_mutex);
  return -ESRCH;
 }
 mi = sb_dqopt(sb)->info + type;
 spin_lock(&dq_data_lock);
 ii->dqi_bgrace = mi->dqi_bgrace;
 ii->dqi_igrace = mi->dqi_igrace;
 ii->dqi_flags = mi->dqi_flags & DQF_MASK;
 ii->dqi_valid = IIF_ALL;
 spin_unlock(&dq_data_lock);
 mutex_unlock(&sb_dqopt(sb)->dqonoff_mutex);
 return 0;
}
