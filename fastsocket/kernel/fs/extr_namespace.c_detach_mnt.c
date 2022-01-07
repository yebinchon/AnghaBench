
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_hash; int mnt_child; TYPE_1__* mnt_root; TYPE_1__* mnt_mountpoint; struct vfsmount* mnt_parent; } ;
struct path {TYPE_1__* dentry; struct vfsmount* mnt; } ;
struct TYPE_2__ {int d_mounted; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void detach_mnt(struct vfsmount *mnt, struct path *old_path)
{
 old_path->dentry = mnt->mnt_mountpoint;
 old_path->mnt = mnt->mnt_parent;
 mnt->mnt_parent = mnt;
 mnt->mnt_mountpoint = mnt->mnt_root;
 list_del_init(&mnt->mnt_child);
 list_del_init(&mnt->mnt_hash);
 old_path->dentry->d_mounted--;
}
