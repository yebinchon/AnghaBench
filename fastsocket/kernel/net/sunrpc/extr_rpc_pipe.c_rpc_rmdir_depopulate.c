
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mutex; } ;
struct dentry {struct inode* d_inode; } ;


 int I_MUTEX_PARENT ;
 int __rpc_rmdir (struct inode*,struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rpc_rmdir_depopulate(struct dentry *dentry,
  void (*depopulate)(struct dentry *))
{
 struct dentry *parent;
 struct inode *dir;
 int error;

 parent = dget_parent(dentry);
 dir = parent->d_inode;
 mutex_lock_nested(&dir->i_mutex, I_MUTEX_PARENT);
 if (depopulate != ((void*)0))
  depopulate(dentry);
 error = __rpc_rmdir(dir, dentry);
 mutex_unlock(&dir->i_mutex);
 dput(parent);
 return error;
}
