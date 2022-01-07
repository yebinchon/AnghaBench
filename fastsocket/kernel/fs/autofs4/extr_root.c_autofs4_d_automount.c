
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; } ;
struct TYPE_3__ {int name; int len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; int d_sb; } ;
struct autofs_sb_info {int version; int fs_lock; } ;
struct autofs_info {int flags; } ;
struct TYPE_4__ {int i_mode; } ;


 int AUTOFS_INF_PENDING ;
 int DPRINTK (char*,struct dentry*,int ,int ) ;
 int EAGAIN ;
 int ENOENT ;
 struct vfsmount* ERR_PTR (int) ;
 scalar_t__ S_ISLNK (int ) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 int autofs4_mount_wait (struct dentry*) ;
 struct dentry* autofs4_mountpoint_changed (struct path*) ;
 scalar_t__ autofs4_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int d_mountpoint (struct dentry*) ;
 int do_expire_wait (struct dentry*) ;
 scalar_t__ have_submounts (struct dentry*) ;
 int simple_empty (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct vfsmount *autofs4_d_automount(struct path *path)
{
 struct dentry *dentry = path->dentry;
 struct autofs_sb_info *sbi = autofs4_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 int status;

 DPRINTK("dentry=%p %.*s",
  dentry, dentry->d_name.len, dentry->d_name.name);


 if (autofs4_oz_mode(sbi))
  return ((void*)0);
 status = do_expire_wait(dentry);
 if (status && status != -EAGAIN)
  return ((void*)0);


 spin_lock(&sbi->fs_lock);
 if (ino->flags & AUTOFS_INF_PENDING) {
  spin_unlock(&sbi->fs_lock);
  status = autofs4_mount_wait(dentry);
  if (status)
   return ERR_PTR(status);
  goto done;
 }






 if (dentry->d_inode && S_ISLNK(dentry->d_inode->i_mode)) {
  spin_unlock(&sbi->fs_lock);
  goto done;
 }

 if (!d_mountpoint(dentry)) {
  if (sbi->version > 4) {
   if (have_submounts(dentry)) {
    spin_unlock(&sbi->fs_lock);
    goto done;
   }
  } else {
   if (!simple_empty(dentry)) {
    spin_unlock(&sbi->fs_lock);
    goto done;
   }
  }
  ino->flags |= AUTOFS_INF_PENDING;
  spin_unlock(&sbi->fs_lock);
  status = autofs4_mount_wait(dentry);
  spin_lock(&sbi->fs_lock);
  ino->flags &= ~AUTOFS_INF_PENDING;
  if (status) {
   spin_unlock(&sbi->fs_lock);
   return ERR_PTR(status);
  }
 }
 spin_unlock(&sbi->fs_lock);
done:

 dentry = autofs4_mountpoint_changed(path);
 if (!dentry)
  return ERR_PTR(-ENOENT);

 return ((void*)0);
}
