
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_mmap_nonlinear; int i_mmap; int private_lock; int private_list; int i_mmap_lock; int tree_lock; int page_tree; } ;
struct inode {int i_fsnotify_mark_entries; int inotify_mutex; int inotify_watches; TYPE_1__ i_data; int i_devices; int i_dentry; int i_hash; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int INIT_RAW_PRIO_TREE_ROOT (int *) ;
 int i_size_ordered_init (struct inode*) ;
 int memset (struct inode*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void inode_init_once(struct inode *inode)
{
 memset(inode, 0, sizeof(*inode));
 INIT_HLIST_NODE(&inode->i_hash);
 INIT_LIST_HEAD(&inode->i_dentry);
 INIT_LIST_HEAD(&inode->i_devices);
 INIT_RADIX_TREE(&inode->i_data.page_tree, GFP_ATOMIC);
 spin_lock_init(&inode->i_data.tree_lock);
 spin_lock_init(&inode->i_data.i_mmap_lock);
 INIT_LIST_HEAD(&inode->i_data.private_list);
 spin_lock_init(&inode->i_data.private_lock);
 INIT_RAW_PRIO_TREE_ROOT(&inode->i_data.i_mmap);
 INIT_LIST_HEAD(&inode->i_data.i_mmap_nonlinear);
 i_size_ordered_init(inode);







}
