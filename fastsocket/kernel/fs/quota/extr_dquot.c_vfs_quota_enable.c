
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct quota_info {int dqonoff_mutex; int flags; } ;
struct inode {struct super_block* i_sb; } ;


 unsigned int DQUOT_LIMITS_ENABLED ;
 unsigned int DQUOT_SUSPENDED ;
 unsigned int DQUOT_USAGE_ENABLED ;
 int EBUSY ;
 int dq_state_lock ;
 int dquot_state_flag (unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 scalar_t__ sb_has_quota_limits_enabled (struct super_block*,int) ;
 scalar_t__ sb_has_quota_loaded (struct super_block*,int) ;
 scalar_t__ sb_has_quota_usage_enabled (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfs_load_quota_inode (struct inode*,int,int,unsigned int) ;
 int vfs_quota_on_remount (struct super_block*,int) ;

int vfs_quota_enable(struct inode *inode, int type, int format_id,
  unsigned int flags)
{
 int ret = 0;
 struct super_block *sb = inode->i_sb;
 struct quota_info *dqopt = sb_dqopt(sb);


 if (flags & DQUOT_SUSPENDED)
  return vfs_quota_on_remount(sb, type);
 if (!flags)
  return 0;

 if (sb_has_quota_loaded(sb, type)) {
  mutex_lock(&dqopt->dqonoff_mutex);

  if (!sb_has_quota_loaded(sb, type)) {
   mutex_unlock(&dqopt->dqonoff_mutex);
   goto load_quota;
  }
  if (flags & DQUOT_USAGE_ENABLED &&
      sb_has_quota_usage_enabled(sb, type)) {
   ret = -EBUSY;
   goto out_lock;
  }
  if (flags & DQUOT_LIMITS_ENABLED &&
      sb_has_quota_limits_enabled(sb, type)) {
   ret = -EBUSY;
   goto out_lock;
  }
  spin_lock(&dq_state_lock);
  sb_dqopt(sb)->flags |= dquot_state_flag(flags, type);
  spin_unlock(&dq_state_lock);
out_lock:
  mutex_unlock(&dqopt->dqonoff_mutex);
  return ret;
 }

load_quota:
 return vfs_load_quota_inode(inode, type, format_id, flags);
}
