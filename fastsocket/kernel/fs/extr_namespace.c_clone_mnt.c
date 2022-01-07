
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_expire; struct vfsmount* mnt_master; int mnt_slave; int mnt_share; int mnt_slave_list; struct vfsmount* mnt_parent; int mnt_root; int mnt_mountpoint; struct super_block* mnt_sb; int mnt_flags; scalar_t__ mnt_group_id; int mnt_devname; } ;
struct super_block {int s_active; } ;
struct dentry {int dummy; } ;


 int CLEAR_MNT_SHARED (struct vfsmount*) ;
 int CL_EXPIRE ;
 int CL_MAKE_SHARED ;
 int CL_PRIVATE ;
 int CL_PROPAGATION ;
 int CL_SLAVE ;
 scalar_t__ IS_MNT_SHARED (struct vfsmount*) ;
 scalar_t__ IS_MNT_SLAVE (struct vfsmount*) ;
 struct vfsmount* alloc_vfsmnt (int ) ;
 int atomic_inc (int *) ;
 int dget (struct dentry*) ;
 int free_vfsmnt (struct vfsmount*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int mnt_alloc_group_id (struct vfsmount*) ;
 int set_mnt_shared (struct vfsmount*) ;

__attribute__((used)) static struct vfsmount *clone_mnt(struct vfsmount *old, struct dentry *root,
     int flag)
{
 struct super_block *sb = old->mnt_sb;
 struct vfsmount *mnt = alloc_vfsmnt(old->mnt_devname);

 if (mnt) {
  if (flag & (CL_SLAVE | CL_PRIVATE))
   mnt->mnt_group_id = 0;
  else
   mnt->mnt_group_id = old->mnt_group_id;

  if ((flag & CL_MAKE_SHARED) && !mnt->mnt_group_id) {
   int err = mnt_alloc_group_id(mnt);
   if (err)
    goto out_free;
  }

  mnt->mnt_flags = old->mnt_flags;
  atomic_inc(&sb->s_active);
  mnt->mnt_sb = sb;
  mnt->mnt_root = dget(root);
  mnt->mnt_mountpoint = mnt->mnt_root;
  mnt->mnt_parent = mnt;

  if (flag & CL_SLAVE) {
   list_add(&mnt->mnt_slave, &old->mnt_slave_list);
   mnt->mnt_master = old;
   CLEAR_MNT_SHARED(mnt);
  } else if (!(flag & CL_PRIVATE)) {
   if ((flag & CL_PROPAGATION) || IS_MNT_SHARED(old))
    list_add(&mnt->mnt_share, &old->mnt_share);
   if (IS_MNT_SLAVE(old))
    list_add(&mnt->mnt_slave, &old->mnt_slave);
   mnt->mnt_master = old->mnt_master;
  }
  if (flag & CL_MAKE_SHARED)
   set_mnt_shared(mnt);



  if (flag & CL_EXPIRE) {
   if (!list_empty(&old->mnt_expire))
    list_add(&mnt->mnt_expire, &old->mnt_expire);
  }
 }
 return mnt;

 out_free:
 free_vfsmnt(mnt);
 return ((void*)0);
}
