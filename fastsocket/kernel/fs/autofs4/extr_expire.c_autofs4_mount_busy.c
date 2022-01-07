
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct TYPE_2__ {int name; scalar_t__ len; } ;
struct dentry {int d_sb; TYPE_1__ d_name; } ;
struct autofs_sb_info {int type; } ;
struct autofs_info {int last_used; } ;


 int DPRINTK (char*,...) ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 scalar_t__ autofs_type_indirect (int ) ;
 int follow_down (struct path*) ;
 scalar_t__ is_autofs4_dentry (struct dentry*) ;
 int jiffies ;
 int may_umount_tree (struct vfsmount*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;

__attribute__((used)) static int autofs4_mount_busy(struct vfsmount *mnt, struct dentry *dentry)
{
 struct dentry *top = dentry;
 struct path path = {.mnt = mnt, .dentry = dentry};
 int status = 1;

 DPRINTK("dentry %p %.*s",
  dentry, (int)dentry->d_name.len, dentry->d_name.name);

 path_get(&path);

 if (!follow_down(&path))
  goto done;

 if (is_autofs4_dentry(path.dentry)) {
  struct autofs_sb_info *sbi = autofs4_sbi(path.dentry->d_sb);


  if (autofs_type_indirect(sbi->type))
   goto done;
 }


 if (!may_umount_tree(path.mnt)) {
  struct autofs_info *ino = autofs4_dentry_ino(top);
  ino->last_used = jiffies;
  goto done;
 }

 status = 0;
done:
 DPRINTK("returning = %d", status);
 path_put(&path);
 return status;
}
