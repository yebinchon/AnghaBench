
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int EACCES ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 int fuse_update_attributes (struct inode*,struct kstat*,int *,int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_getattr(struct vfsmount *mnt, struct dentry *entry,
   struct kstat *stat)
{
 struct inode *inode = entry->d_inode;
 struct fuse_conn *fc = get_fuse_conn(inode);

 if (!fuse_allow_current_process(fc))
  return -EACCES;

 return fuse_update_attributes(inode, stat, ((void*)0), ((void*)0));
}
