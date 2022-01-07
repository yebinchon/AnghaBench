
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct inode {scalar_t__ i_version; int i_ino; } ;
struct dentry {struct inode* d_inode; } ;


 int _enter (char*,int ,unsigned long long) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int afs_getattr(struct vfsmount *mnt, struct dentry *dentry,
        struct kstat *stat)
{
 struct inode *inode;

 inode = dentry->d_inode;

 _enter("{ ino=%lu v=%llu }", inode->i_ino,
  (unsigned long long)inode->i_version);

 generic_fillattr(inode, stat);
 return 0;
}
