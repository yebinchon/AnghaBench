
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct vfsmount* mnt_parent; struct dentry* mnt_mountpoint; } ;
struct path {int dentry; struct vfsmount* mnt; } ;
struct dentry {int dummy; } ;


 scalar_t__ is_subdir (struct dentry*,int ) ;

__attribute__((used)) static bool is_path_reachable(struct vfsmount *mnt, struct dentry *dentry,
    const struct path *root)
{
 while (mnt != root->mnt && mnt->mnt_parent != mnt) {
  dentry = mnt->mnt_mountpoint;
  mnt = mnt->mnt_parent;
 }
 return mnt == root->mnt && is_subdir(dentry, root->dentry);
}
