
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int cache_validity; scalar_t__ change_attr; } ;
struct nfs4_change_info {scalar_t__ before; scalar_t__ after; int atomic; } ;
struct inode {int i_lock; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ATTR ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_PAGECACHE ;
 int nfs_force_lookup_revalidate (struct inode*) ;
 int nfs_fscache_invalidate (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void update_changeattr(struct inode *dir, struct nfs4_change_info *cinfo)
{
 struct nfs_inode *nfsi = NFS_I(dir);

 spin_lock(&dir->i_lock);
 nfsi->cache_validity |= NFS_INO_INVALID_ATTR|NFS_INO_REVAL_PAGECACHE|NFS_INO_INVALID_DATA;
 if (!cinfo->atomic || cinfo->before != nfsi->change_attr)
  nfs_force_lookup_revalidate(dir);
 nfsi->change_attr = cinfo->after;
 nfs_fscache_invalidate(dir);
 spin_unlock(&dir->i_lock);
}
