
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_access_entry {int mask; int cred; int jiffies; int rb_node; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int access_cache_inode_lru; int flags; } ;


 int GFP_KERNEL ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_ACL_LRU_SET ;
 int RB_CLEAR_NODE (int *) ;
 int atomic_long_inc (int *) ;
 int get_rpccred (int ) ;
 struct nfs_access_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nfs_access_add_rbtree (struct inode*,struct nfs_access_entry*) ;
 int nfs_access_lru_list ;
 int nfs_access_lru_lock ;
 int nfs_access_nr_entries ;
 int smp_mb__after_atomic_inc () ;
 int smp_mb__before_atomic_inc () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void nfs_access_add_cache(struct inode *inode, struct nfs_access_entry *set)
{
 struct nfs_access_entry *cache = kmalloc(sizeof(*cache), GFP_KERNEL);
 if (cache == ((void*)0))
  return;
 RB_CLEAR_NODE(&cache->rb_node);
 cache->jiffies = set->jiffies;
 cache->cred = get_rpccred(set->cred);
 cache->mask = set->mask;

 nfs_access_add_rbtree(inode, cache);


 smp_mb__before_atomic_inc();
 atomic_long_inc(&nfs_access_nr_entries);
 smp_mb__after_atomic_inc();


 if (!test_bit(NFS_INO_ACL_LRU_SET, &NFS_I(inode)->flags)) {
  spin_lock(&nfs_access_lru_lock);
  if (!test_and_set_bit(NFS_INO_ACL_LRU_SET, &NFS_I(inode)->flags))
   list_add_tail(&NFS_I(inode)->access_cache_inode_lru,
     &nfs_access_lru_list);
  spin_unlock(&nfs_access_lru_lock);
 }
}
