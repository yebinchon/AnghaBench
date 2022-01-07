
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_umount; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {scalar_t__ mnt_root; int mnt_flags; int mnt_ns; struct super_block* mnt_sb; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int MS_BIND ;
 int capable (int ) ;
 int change_mount_flags (TYPE_1__*,int) ;
 int check_mnt (TYPE_1__*) ;
 int do_remount_sb (struct super_block*,int,void*,int ) ;
 int down_write (int *) ;
 int security_sb_post_remount (TYPE_1__*,int,void*) ;
 int security_sb_remount (struct super_block*,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int touch_mnt_namespace (int ) ;
 int up_write (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static int do_remount(struct path *path, int flags, int mnt_flags,
        void *data)
{
 int err;
 struct super_block *sb = path->mnt->mnt_sb;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (!check_mnt(path->mnt))
  return -EINVAL;

 if (path->dentry != path->mnt->mnt_root)
  return -EINVAL;

 err = security_sb_remount(sb, data);
 if (err)
  return err;

 down_write(&sb->s_umount);
 if (flags & MS_BIND)
  err = change_mount_flags(path->mnt, flags);
 else
  err = do_remount_sb(sb, flags, data, 0);
 if (!err)
  path->mnt->mnt_flags = mnt_flags;
 up_write(&sb->s_umount);
 if (!err) {
  security_sb_post_remount(path->mnt, flags, data);

  spin_lock(&vfsmount_lock);
  touch_mnt_namespace(path->mnt->mnt_ns);
  spin_unlock(&vfsmount_lock);
 }
 return err;
}
