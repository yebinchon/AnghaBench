
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ctime; int i_atime; int i_mtime; } ;
struct TYPE_2__ {int * proc_get_link; } ;
struct proc_inode {struct inode vfs_inode; int * ns_ops; int * ns; int * sysctl_entry; int * sysctl; int * pde; TYPE_1__ op; scalar_t__ fd; int * pid; } ;


 int CURRENT_TIME ;
 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int proc_inode_cachep ;

__attribute__((used)) static struct inode *proc_alloc_inode(struct super_block *sb)
{
 struct proc_inode *ei;
 struct inode *inode;

 ei = (struct proc_inode *)kmem_cache_alloc(proc_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 ei->pid = ((void*)0);
 ei->fd = 0;
 ei->op.proc_get_link = ((void*)0);
 ei->pde = ((void*)0);
 ei->sysctl = ((void*)0);
 ei->sysctl_entry = ((void*)0);
 ei->ns = ((void*)0);
 ei->ns_ops = ((void*)0);
 inode = &ei->vfs_inode;
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
 return inode;
}
