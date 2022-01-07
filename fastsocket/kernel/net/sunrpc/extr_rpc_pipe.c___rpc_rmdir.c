
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int d_delete (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int simple_rmdir (struct inode*,struct dentry*) ;

__attribute__((used)) static int __rpc_rmdir(struct inode *dir, struct dentry *dentry)
{
 int ret;

 dget(dentry);
 ret = simple_rmdir(dir, dentry);
 d_delete(dentry);
 dput(dentry);
 return ret;
}
