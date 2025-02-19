
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct kstat {int mode; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int mode; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;


 scalar_t__ IS_ERR (struct ctl_table_header*) ;
 TYPE_1__* PROC_I (struct inode*) ;
 int PTR_ERR (struct ctl_table_header*) ;
 int S_IFMT ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 struct ctl_table_header* grab_header (struct inode*) ;
 int sysctl_head_finish (struct ctl_table_header*) ;

__attribute__((used)) static int proc_sys_getattr(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 struct ctl_table_header *head = grab_header(inode);
 struct ctl_table *table = PROC_I(inode)->sysctl_entry;

 if (IS_ERR(head))
  return PTR_ERR(head);

 generic_fillattr(inode, stat);
 if (table)
  stat->mode = (stat->mode & S_IFMT) | table->mode;

 sysctl_head_finish(head);
 return 0;
}
