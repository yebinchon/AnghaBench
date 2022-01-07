
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_unlinkdata {int dummy; } ;
struct dentry {int d_flags; int d_lock; struct nfs_unlinkdata* d_fsdata; } ;


 int DCACHE_NFSFS_RENAMED ;
 int nfs_free_unlinkdata (struct nfs_unlinkdata*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs_cancel_async_unlink(struct dentry *dentry)
{
 spin_lock(&dentry->d_lock);
 if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
  struct nfs_unlinkdata *data = dentry->d_fsdata;

  dentry->d_flags &= ~DCACHE_NFSFS_RENAMED;
  spin_unlock(&dentry->d_lock);
  nfs_free_unlinkdata(data);
  return;
 }
 spin_unlock(&dentry->d_lock);
}
