
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct kstat {int blksize; } ;
struct inode {int i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int cluster_size; } ;


 TYPE_1__* MSDOS_SB (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int fat_getattr(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 generic_fillattr(inode, stat);
 stat->blksize = MSDOS_SB(inode->i_sb)->cluster_size;
 return 0;
}
