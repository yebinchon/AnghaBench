
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int mode; int gid; int uid; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;

__attribute__((used)) static int proc_notify_change(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = dentry->d_inode;
 struct proc_dir_entry *de = PDE(inode);
 int error;

 error = inode_change_ok(inode, iattr);
 if (error)
  goto out;

 error = inode_setattr(inode, iattr);
 if (error)
  goto out;

 de->uid = inode->i_uid;
 de->gid = inode->i_gid;
 de->mode = inode->i_mode;
out:
 return error;
}
