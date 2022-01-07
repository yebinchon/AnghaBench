
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int inode_mode_to_security_class (int) ;
 int may_create (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int selinux_inode_mknod(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
 return may_create(dir, dentry, inode_mode_to_security_class(mode));
}
