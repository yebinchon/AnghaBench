
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {scalar_t__ mnt_sb; int mnt_flags; TYPE_2__* mnt_root; } ;
struct path {scalar_t__ dentry; TYPE_3__* mnt; } ;
struct TYPE_6__ {scalar_t__ mnt_sb; scalar_t__ mnt_root; int mnt_ns; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_mode; } ;


 int EBUSY ;
 int EINVAL ;
 int MNT_SHRINKABLE ;
 scalar_t__ S_ISLNK (int ) ;
 int __follow_down (struct path*,int) ;
 int check_mnt (TYPE_3__*) ;
 int graft_tree (struct vfsmount*,struct path*) ;

__attribute__((used)) static int do_add_mount_unlocked(struct vfsmount *newmnt, struct path *path, int mnt_flags)
{
 int err;


 err = __follow_down(path, 1);
 if (err < 0)
  goto unlock;

 err = -EINVAL;
 if (!(mnt_flags & MNT_SHRINKABLE) && !check_mnt(path->mnt))
  goto unlock;


        if (!path->mnt->mnt_ns)
                goto unlock;


 err = -EBUSY;
 if (path->mnt->mnt_sb == newmnt->mnt_sb &&
     path->mnt->mnt_root == path->dentry)
  goto unlock;

 err = -EINVAL;
 if (S_ISLNK(newmnt->mnt_root->d_inode->i_mode))
  goto unlock;

 newmnt->mnt_flags = mnt_flags;
 err = graft_tree(newmnt, path);

unlock:
 return err;
}
