
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct proc_inode {struct ctl_table* sysctl_entry; struct ctl_table_header* sysctl; } ;
struct inode {int * i_fop; int * i_op; scalar_t__ i_nlink; int i_mode; int i_flags; int i_ctime; int i_atime; int i_mtime; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int child; int mode; } ;


 int CURRENT_TIME ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_PRIVATE ;
 struct inode* new_inode (struct super_block*) ;
 int proc_sys_dir_file_operations ;
 int proc_sys_dir_operations ;
 int proc_sys_file_operations ;
 int proc_sys_inode_operations ;
 int sysctl_head_get (struct ctl_table_header*) ;

__attribute__((used)) static struct inode *proc_sys_make_inode(struct super_block *sb,
  struct ctl_table_header *head, struct ctl_table *table)
{
 struct inode *inode;
 struct proc_inode *ei;

 inode = new_inode(sb);
 if (!inode)
  goto out;

 sysctl_head_get(head);
 ei = PROC_I(inode);
 ei->sysctl = head;
 ei->sysctl_entry = table;

 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
 inode->i_flags |= S_PRIVATE;
 inode->i_mode = table->mode;
 if (!table->child) {
  inode->i_mode |= S_IFREG;
  inode->i_op = &proc_sys_inode_operations;
  inode->i_fop = &proc_sys_file_operations;
 } else {
  inode->i_mode |= S_IFDIR;
  inode->i_nlink = 0;
  inode->i_op = &proc_sys_dir_operations;
  inode->i_fop = &proc_sys_dir_file_operations;
 }
out:
 return inode;
}
