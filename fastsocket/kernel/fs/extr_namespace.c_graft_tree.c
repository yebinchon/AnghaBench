
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vfsmount {TYPE_3__* mnt_root; TYPE_1__* mnt_sb; } ;
struct path {TYPE_4__* dentry; } ;
struct TYPE_10__ {int i_mutex; int i_mode; } ;
struct TYPE_9__ {TYPE_5__* d_inode; } ;
struct TYPE_8__ {TYPE_2__* d_inode; } ;
struct TYPE_7__ {int i_mode; } ;
struct TYPE_6__ {int s_flags; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOTDIR ;
 scalar_t__ IS_DEADDIR (TYPE_5__*) ;
 int MS_NOUSER ;
 scalar_t__ S_ISDIR (int ) ;
 int attach_recursive_mnt (struct vfsmount*,struct path*,int *) ;
 int d_unlinked (TYPE_4__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_sb_check_sb (struct vfsmount*,struct path*) ;
 int security_sb_post_addmount (struct vfsmount*,struct path*) ;

__attribute__((used)) static int graft_tree(struct vfsmount *mnt, struct path *path)
{
 int err;
 if (mnt->mnt_sb->s_flags & MS_NOUSER)
  return -EINVAL;

 if (S_ISDIR(path->dentry->d_inode->i_mode) !=
       S_ISDIR(mnt->mnt_root->d_inode->i_mode))
  return -ENOTDIR;

 err = -ENOENT;
 mutex_lock(&path->dentry->d_inode->i_mutex);
 if (IS_DEADDIR(path->dentry->d_inode))
  goto out_unlock;

 err = security_sb_check_sb(mnt, path);
 if (err)
  goto out_unlock;

 err = -ENOENT;
 if (!d_unlinked(path->dentry))
  err = attach_recursive_mnt(mnt, path, ((void*)0));
out_unlock:
 mutex_unlock(&path->dentry->d_inode->i_mutex);
 if (!err)
  security_sb_post_addmount(mnt, path);
 return err;
}
