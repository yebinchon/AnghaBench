
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {int s_root; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; int fs_lock; } ;
struct autofs_info {int flags; int expire_complete; } ;


 int AUTOFS_EXP_IMMEDIATE ;
 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_PENDING ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int autofs4_direct_busy (struct vfsmount*,struct dentry*,unsigned long,int) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int init_completion (int *) ;
 int jiffies ;
 int now ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *autofs4_expire_direct(struct super_block *sb,
         struct vfsmount *mnt,
         struct autofs_sb_info *sbi,
         int how)
{
 unsigned long timeout;
 struct dentry *root = dget(sb->s_root);
 int do_now = how & AUTOFS_EXP_IMMEDIATE;
 struct autofs_info *ino;

 if (!root)
  return ((void*)0);

 now = jiffies;
 timeout = sbi->exp_timeout;

 spin_lock(&sbi->fs_lock);
 ino = autofs4_dentry_ino(root);

 if (ino->flags & AUTOFS_INF_PENDING)
  goto out;
 if (!autofs4_direct_busy(mnt, root, timeout, do_now)) {
  struct autofs_info *ino = autofs4_dentry_ino(root);
  ino->flags |= AUTOFS_INF_EXPIRING;
  init_completion(&ino->expire_complete);
  spin_unlock(&sbi->fs_lock);
  return root;
 }
out:
 spin_unlock(&sbi->fs_lock);
 dput(root);

 return ((void*)0);
}
