
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct rb_node {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_ordered_inode_tree {int lock; int tree; } ;
struct btrfs_ordered_extent {int compress_type; int root_extent_list; int rb_node; int list; int wait; int refs; int flags; int inode; void* bytes_left; void* disk_len; void* len; void* start; void* file_offset; } ;
struct TYPE_6__ {TYPE_2__* root; struct btrfs_ordered_inode_tree ordered_tree; } ;
struct TYPE_5__ {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int ordered_extent_lock; int ordered_extents; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_ORDERED_COMPLETE ;
 int BTRFS_ORDERED_DIRECT ;
 int BTRFS_ORDERED_IO_DONE ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int igrab (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct btrfs_ordered_extent* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ordered_data_tree_panic (struct inode*,int ,void*) ;
 int set_bit (int,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_btrfs_ordered_extent_add (struct inode*,struct btrfs_ordered_extent*) ;
 struct rb_node* tree_insert (int *,void*,int *) ;

__attribute__((used)) static int __btrfs_add_ordered_extent(struct inode *inode, u64 file_offset,
          u64 start, u64 len, u64 disk_len,
          int type, int dio, int compress_type)
{
 struct btrfs_ordered_inode_tree *tree;
 struct rb_node *node;
 struct btrfs_ordered_extent *entry;

 tree = &BTRFS_I(inode)->ordered_tree;
 entry = kzalloc(sizeof(*entry), GFP_NOFS);
 if (!entry)
  return -ENOMEM;

 entry->file_offset = file_offset;
 entry->start = start;
 entry->len = len;
 entry->disk_len = disk_len;
 entry->bytes_left = len;
 entry->inode = igrab(inode);
 entry->compress_type = compress_type;
 if (type != BTRFS_ORDERED_IO_DONE && type != BTRFS_ORDERED_COMPLETE)
  set_bit(type, &entry->flags);

 if (dio)
  set_bit(BTRFS_ORDERED_DIRECT, &entry->flags);


 atomic_set(&entry->refs, 1);
 init_waitqueue_head(&entry->wait);
 INIT_LIST_HEAD(&entry->list);
 INIT_LIST_HEAD(&entry->root_extent_list);

 trace_btrfs_ordered_extent_add(inode, entry);

 spin_lock_irq(&tree->lock);
 node = tree_insert(&tree->tree, file_offset,
      &entry->rb_node);
 if (node)
  ordered_data_tree_panic(inode, -EEXIST, file_offset);
 spin_unlock_irq(&tree->lock);

 spin_lock(&BTRFS_I(inode)->root->fs_info->ordered_extent_lock);
 list_add_tail(&entry->root_extent_list,
        &BTRFS_I(inode)->root->fs_info->ordered_extents);
 spin_unlock(&BTRFS_I(inode)->root->fs_info->ordered_extent_lock);

 return 0;
}
