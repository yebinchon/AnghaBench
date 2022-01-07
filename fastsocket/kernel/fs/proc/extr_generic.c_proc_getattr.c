
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct proc_dir_entry {scalar_t__ nlink; } ;
struct kstat {int dummy; } ;
struct inode {scalar_t__ i_nlink; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {struct proc_dir_entry* pde; } ;


 TYPE_1__* PROC_I (struct inode*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

__attribute__((used)) static int proc_getattr(struct vfsmount *mnt, struct dentry *dentry,
   struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 struct proc_dir_entry *de = PROC_I(inode)->pde;
 if (de && de->nlink)
  inode->i_nlink = de->nlink;

 generic_fillattr(inode, stat);
 return 0;
}
