
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_filelist {int dummy; } ;
struct inode {int i_mutex; } ;
struct dentry {struct inode* d_inode; } ;


 int I_MUTEX_CHILD ;
 int __rpc_depopulate (struct dentry*,struct rpc_filelist const*,int,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rpc_depopulate(struct dentry *parent,
      const struct rpc_filelist *files,
      int start, int eof)
{
 struct inode *dir = parent->d_inode;

 mutex_lock_nested(&dir->i_mutex, I_MUTEX_CHILD);
 __rpc_depopulate(parent, files, start, eof);
 mutex_unlock(&dir->i_mutex);
}
