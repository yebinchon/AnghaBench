
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_3__ {int access_cache_inode_lru; int flags; } ;


 int LIST_HEAD (int ) ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_ACL_LRU_SET ;
 int __nfs_access_zap_cache (TYPE_1__*,int *) ;
 int head ;
 int list_del_init (int *) ;
 int nfs_access_free_list (int *) ;
 int nfs_access_lru_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void nfs_access_zap_cache(struct inode *inode)
{
 LIST_HEAD(head);

 if (test_bit(NFS_INO_ACL_LRU_SET, &NFS_I(inode)->flags) == 0)
  return;

 spin_lock(&nfs_access_lru_lock);
 if (test_and_clear_bit(NFS_INO_ACL_LRU_SET, &NFS_I(inode)->flags))
  list_del_init(&NFS_I(inode)->access_cache_inode_lru);

 spin_lock(&inode->i_lock);
 __nfs_access_zap_cache(NFS_I(inode), &head);
 spin_unlock(&inode->i_lock);
 spin_unlock(&nfs_access_lru_lock);
 nfs_access_free_list(&head);
}
