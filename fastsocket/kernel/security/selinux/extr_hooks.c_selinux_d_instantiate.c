
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int inode_doinit_with_dentry (struct inode*,struct dentry*) ;

__attribute__((used)) static void selinux_d_instantiate(struct dentry *dentry, struct inode *inode)
{
 if (inode)
  inode_doinit_with_dentry(inode, dentry);
}
