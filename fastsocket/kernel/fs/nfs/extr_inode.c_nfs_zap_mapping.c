
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_DATA ;
 int nfs_fscache_invalidate (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_zap_mapping(struct inode *inode, struct address_space *mapping)
{
 if (mapping->nrpages != 0) {
  spin_lock(&inode->i_lock);
  NFS_I(inode)->cache_validity |= NFS_INO_INVALID_DATA;
  nfs_fscache_invalidate(inode);
  spin_unlock(&inode->i_lock);
 }
}
