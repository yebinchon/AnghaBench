
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; int d_sb; } ;
struct autofs_sb_info {int fs_lock; } ;
struct autofs_info {int flags; int expire_complete; } ;


 int AUTOFS_INF_EXPIRING ;
 int DPRINTK (char*,...) ;
 int EAGAIN ;
 int NFY_NONE ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int autofs4_wait (struct autofs_sb_info*,struct dentry*,int ) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;

int autofs4_expire_wait(struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs4_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 int status;


 spin_lock(&sbi->fs_lock);
 if (ino->flags & AUTOFS_INF_EXPIRING) {
  spin_unlock(&sbi->fs_lock);

  DPRINTK("waiting for expire %p name=%.*s",
    dentry, dentry->d_name.len, dentry->d_name.name);

  status = autofs4_wait(sbi, dentry, NFY_NONE);
  wait_for_completion(&ino->expire_complete);

  DPRINTK("expire done status=%d", status);

  if (d_unhashed(dentry))
   return -EAGAIN;

  return status;
 }
 spin_unlock(&sbi->fs_lock);

 return 0;
}
