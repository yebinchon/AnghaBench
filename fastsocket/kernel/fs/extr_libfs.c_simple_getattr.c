
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct kstat {int blocks; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int nrpages; } ;


 int PAGE_CACHE_SHIFT ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int simple_getattr(struct vfsmount *mnt, struct dentry *dentry,
     struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 generic_fillattr(inode, stat);
 stat->blocks = inode->i_mapping->nrpages << (PAGE_CACHE_SHIFT - 9);
 return 0;
}
