
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qstr {int dummy; } ;
struct inode {int i_mutex; } ;
struct dentry {struct inode* d_inode; } ;


 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 struct dentry* __rpc_lookup_create_exclusive (struct dentry*,struct qstr*) ;
 int __rpc_mkdir (struct inode*,struct dentry*,int ,int *,void*) ;
 int __rpc_rmdir (struct inode*,struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct dentry *rpc_mkdir_populate(struct dentry *parent,
  struct qstr *name, umode_t mode, void *private,
  int (*populate)(struct dentry *, void *), void *args_populate)
{
 struct dentry *dentry;
 struct inode *dir = parent->d_inode;
 int error;

 mutex_lock_nested(&dir->i_mutex, I_MUTEX_PARENT);
 dentry = __rpc_lookup_create_exclusive(parent, name);
 if (IS_ERR(dentry))
  goto out;
 error = __rpc_mkdir(dir, dentry, mode, ((void*)0), private);
 if (error != 0)
  goto out_err;
 if (populate != ((void*)0)) {
  error = populate(dentry, args_populate);
  if (error)
   goto err_rmdir;
 }
out:
 mutex_unlock(&dir->i_mutex);
 return dentry;
err_rmdir:
 __rpc_rmdir(dir, dentry);
out_err:
 dentry = ERR_PTR(error);
 goto out;
}
