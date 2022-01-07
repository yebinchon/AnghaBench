
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_unlinkdata {int list; } ;
struct inode {int i_lock; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int silly_list; int silly_count; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int hlist_add_head (int *,int *) ;
 int nfs_do_call_unlink (struct dentry*,struct inode*,struct nfs_unlinkdata*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs_call_unlink(struct dentry *dentry, struct nfs_unlinkdata *data)
{
 struct dentry *parent;
 struct inode *dir;
 int ret = 0;


 parent = dget_parent(dentry);
 if (parent == ((void*)0))
  goto out_free;
 dir = parent->d_inode;

 spin_lock(&dir->i_lock);
 if (atomic_inc_not_zero(&NFS_I(dir)->silly_count) == 0) {

  hlist_add_head(&data->list, &NFS_I(dir)->silly_list);
  spin_unlock(&dir->i_lock);
  ret = 1;
  goto out_dput;
 }
 spin_unlock(&dir->i_lock);
 ret = nfs_do_call_unlink(parent, dir, data);
out_dput:
 dput(parent);
out_free:
 return ret;
}
