
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int MAY_LINK ;
 int may_link (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int selinux_inode_link(struct dentry *old_dentry, struct inode *dir, struct dentry *new_dentry)
{
 return may_link(dir, old_dentry, MAY_LINK);
}
