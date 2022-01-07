
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int i_mmap_nonlinear; int i_mmap; int i_mmap_lock; int private_lock; int private_list; int tree_lock; int page_tree; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int INIT_RAW_PRIO_TREE_ROOT (int *) ;
 int memset (struct address_space*,int ,int) ;
 int spin_lock_init (int *) ;

void nilfs_btnode_cache_init_once(struct address_space *btnc)
{
 memset(btnc, 0, sizeof(*btnc));
 INIT_RADIX_TREE(&btnc->page_tree, GFP_ATOMIC);
 spin_lock_init(&btnc->tree_lock);
 INIT_LIST_HEAD(&btnc->private_list);
 spin_lock_init(&btnc->private_lock);

 spin_lock_init(&btnc->i_mmap_lock);
 INIT_RAW_PRIO_TREE_ROOT(&btnc->i_mmap);
 INIT_LIST_HEAD(&btnc->i_mmap_nonlinear);
}
