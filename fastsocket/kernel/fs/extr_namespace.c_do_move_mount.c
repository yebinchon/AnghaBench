
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_expire; struct vfsmount* mnt_parent; TYPE_1__* mnt_root; } ;
struct path {TYPE_1__* dentry; struct vfsmount* mnt; } ;
struct TYPE_4__ {int i_mutex; int i_mode; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ELOOP ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ IS_DEADDIR (TYPE_2__*) ;
 scalar_t__ IS_MNT_SHARED (struct vfsmount*) ;
 int LOOKUP_FOLLOW ;
 scalar_t__ S_ISDIR (int ) ;
 int __follow_down (struct path*,int) ;
 int attach_recursive_mnt (struct vfsmount*,struct path*,struct path*) ;
 int capable (int ) ;
 int check_mnt (struct vfsmount*) ;
 scalar_t__ d_unlinked (TYPE_1__*) ;
 int down_write (int *) ;
 int kern_path (char*,int ,struct path*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int namespace_sem ;
 int path_put (struct path*) ;
 scalar_t__ tree_contains_unbindable (struct vfsmount*) ;
 int up_write (int *) ;

__attribute__((used)) static int do_move_mount(struct path *path, char *old_name)
{
 struct path old_path, parent_path;
 struct vfsmount *p;
 int err = 0;
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (!old_name || !*old_name)
  return -EINVAL;
 err = kern_path(old_name, LOOKUP_FOLLOW, &old_path);
 if (err)
  return err;

 down_write(&namespace_sem);
 err = __follow_down(path, 1);
 if (err < 0)
  goto out;

 err = -EINVAL;
 if (!check_mnt(path->mnt) || !check_mnt(old_path.mnt))
  goto out;

 err = -ENOENT;
 mutex_lock(&path->dentry->d_inode->i_mutex);
 if (IS_DEADDIR(path->dentry->d_inode))
  goto out1;

 if (d_unlinked(path->dentry))
  goto out1;

 err = -EINVAL;
 if (old_path.dentry != old_path.mnt->mnt_root)
  goto out1;

 if (old_path.mnt == old_path.mnt->mnt_parent)
  goto out1;

 if (S_ISDIR(path->dentry->d_inode->i_mode) !=
       S_ISDIR(old_path.dentry->d_inode->i_mode))
  goto out1;



 if (old_path.mnt->mnt_parent &&
     IS_MNT_SHARED(old_path.mnt->mnt_parent))
  goto out1;




 if (IS_MNT_SHARED(path->mnt) &&
     tree_contains_unbindable(old_path.mnt))
  goto out1;
 err = -ELOOP;
 for (p = path->mnt; p->mnt_parent != p; p = p->mnt_parent)
  if (p == old_path.mnt)
   goto out1;

 err = attach_recursive_mnt(old_path.mnt, path, &parent_path);
 if (err)
  goto out1;



 list_del_init(&old_path.mnt->mnt_expire);
out1:
 mutex_unlock(&path->dentry->d_inode->i_mutex);
out:
 up_write(&namespace_sem);
 if (!err)
  path_put(&parent_path);
 path_put(&old_path);
 return err;
}
