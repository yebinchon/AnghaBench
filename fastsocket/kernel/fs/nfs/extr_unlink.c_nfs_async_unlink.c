
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dir_attr; } ;
struct nfs_unlinkdata {int cred; int dir_attr; TYPE_1__ res; } ;
struct inode {int dummy; } ;
struct dentry {int d_flags; int d_lock; struct nfs_unlinkdata* d_fsdata; } ;


 int DCACHE_NFSFS_RENAMED ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kfree (struct nfs_unlinkdata*) ;
 struct nfs_unlinkdata* kzalloc (int,int ) ;
 int put_rpccred (int ) ;
 int rpc_lookup_cred () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
nfs_async_unlink(struct inode *dir, struct dentry *dentry)
{
 struct nfs_unlinkdata *data;
 int status = -ENOMEM;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  goto out;

 data->cred = rpc_lookup_cred();
 if (IS_ERR(data->cred)) {
  status = PTR_ERR(data->cred);
  goto out_free;
 }
 data->res.dir_attr = &data->dir_attr;

 status = -EBUSY;
 spin_lock(&dentry->d_lock);
 if (dentry->d_flags & DCACHE_NFSFS_RENAMED)
  goto out_unlock;
 dentry->d_flags |= DCACHE_NFSFS_RENAMED;
 dentry->d_fsdata = data;
 spin_unlock(&dentry->d_lock);
 return 0;
out_unlock:
 spin_unlock(&dentry->d_lock);
 put_rpccred(data->cred);
out_free:
 kfree(data);
out:
 return status;
}
