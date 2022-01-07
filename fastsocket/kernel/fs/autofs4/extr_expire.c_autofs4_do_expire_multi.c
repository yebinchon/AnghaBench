
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {int fs_lock; int type; } ;
struct autofs_info {int expire_complete; int flags; } ;


 int AUTOFS_INF_EXPIRING ;
 int EAGAIN ;
 int NFY_EXPIRE ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct dentry* autofs4_expire_direct (struct super_block*,struct vfsmount*,struct autofs_sb_info*,int) ;
 struct dentry* autofs4_expire_indirect (struct super_block*,struct vfsmount*,struct autofs_sb_info*,int) ;
 int autofs4_wait (struct autofs_sb_info*,struct dentry*,int ) ;
 scalar_t__ autofs_type_trigger (int ) ;
 int complete_all (int *) ;
 int dput (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int autofs4_do_expire_multi(struct super_block *sb, struct vfsmount *mnt,
       struct autofs_sb_info *sbi, int when)
{
 struct dentry *dentry;
 int ret = -EAGAIN;

 if (autofs_type_trigger(sbi->type))
  dentry = autofs4_expire_direct(sb, mnt, sbi, when);
 else
  dentry = autofs4_expire_indirect(sb, mnt, sbi, when);

 if (dentry) {
  struct autofs_info *ino = autofs4_dentry_ino(dentry);



  ret = autofs4_wait(sbi, dentry, NFY_EXPIRE);

  spin_lock(&sbi->fs_lock);
  ino->flags &= ~AUTOFS_INF_EXPIRING;
  complete_all(&ino->expire_complete);
  spin_unlock(&sbi->fs_lock);
  dput(dentry);
 }

 return ret;
}
