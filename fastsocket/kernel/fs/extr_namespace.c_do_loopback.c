
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; int mnt; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_MNT_UNBINDABLE (int ) ;
 int LIST_HEAD (int ) ;
 int LOOKUP_AUTOMOUNT ;
 int LOOKUP_FOLLOW ;
 int check_mnt (int ) ;
 struct vfsmount* clone_mnt (int ,int ,int ) ;
 struct vfsmount* copy_tree (int ,int ,int ) ;
 int down_write (int *) ;
 int graft_tree (struct vfsmount*,struct path*) ;
 int kern_path (char*,int,struct path*) ;
 scalar_t__ mnt_ns_loop (struct path*) ;
 int mount_is_safe (struct path*) ;
 int namespace_sem ;
 int path_put (struct path*) ;
 int release_mounts (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int umount_list ;
 int umount_tree (struct vfsmount*,int ,int *) ;
 int up_write (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static int do_loopback(struct path *path, char *old_name,
    int recurse)
{
 struct path old_path;
 struct vfsmount *mnt = ((void*)0);
 int err = mount_is_safe(path);
 if (err)
  return err;
 if (!old_name || !*old_name)
  return -EINVAL;
 err = kern_path(old_name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &old_path);
 if (err)
  return err;

 err = -EINVAL;
 if (mnt_ns_loop(&old_path))
  goto out;

 down_write(&namespace_sem);
 err = -EINVAL;
 if (IS_MNT_UNBINDABLE(old_path.mnt))
  goto out;

 if (!check_mnt(path->mnt) || !check_mnt(old_path.mnt))
  goto out;

 err = -ENOMEM;
 if (recurse)
  mnt = copy_tree(old_path.mnt, old_path.dentry, 0);
 else
  mnt = clone_mnt(old_path.mnt, old_path.dentry, 0);

 if (!mnt)
  goto out;

 err = graft_tree(mnt, path);
 if (err) {
  LIST_HEAD(umount_list);
  spin_lock(&vfsmount_lock);
  umount_tree(mnt, 0, &umount_list);
  spin_unlock(&vfsmount_lock);
  release_mounts(&umount_list);
 }

out:
 up_write(&namespace_sem);
 path_put(&old_path);
 return err;
}
