
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; int d_sb; } ;
struct autofs_sb_info {int fs_lock; } ;
struct autofs_info {int flags; } ;
struct TYPE_4__ {int i_mode; } ;


 int AUTOFS_INF_EXPIRING ;
 int DPRINTK (char*,struct dentry*,int ,int ) ;
 int EISDIR ;
 scalar_t__ S_ISLNK (int ) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int autofs4_mount_wait (struct dentry*) ;
 scalar_t__ autofs4_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int d_mountpoint (struct dentry*) ;
 int do_expire_wait (struct dentry*) ;
 int simple_empty (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int autofs4_d_manage(struct dentry *dentry, bool mounting_here)
{
 struct autofs_sb_info *sbi = autofs4_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 int status;

 DPRINTK("dentry=%p %.*s",
  dentry, dentry->d_name.len, dentry->d_name.name);


 if (autofs4_oz_mode(sbi) || mounting_here) {
  if (!d_mountpoint(dentry))
   return -EISDIR;
  return 0;
 }


 do_expire_wait(dentry);





 status = autofs4_mount_wait(dentry);
 if (status)
  return status;

 spin_lock(&sbi->fs_lock);







 if (!(ino->flags & AUTOFS_INF_EXPIRING)) {






  if ((!d_mountpoint(dentry) && !simple_empty(dentry)) ||
      (dentry->d_inode && S_ISLNK(dentry->d_inode->i_mode)))
   status = -EISDIR;
 }
 spin_unlock(&sbi->fs_lock);

 return status;
}
