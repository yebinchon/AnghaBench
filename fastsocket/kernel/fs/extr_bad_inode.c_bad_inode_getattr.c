
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_getattr(struct vfsmount *mnt, struct dentry *dentry,
   struct kstat *stat)
{
 return -EIO;
}
