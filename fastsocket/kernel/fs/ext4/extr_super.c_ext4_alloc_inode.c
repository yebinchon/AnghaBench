
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ writeback_index; } ;
struct inode {int i_version; TYPE_1__ i_data; } ;
struct ext4_inode_info {struct inode vfs_inode; int i_aiodio_unwritten; scalar_t__ i_datasync_tid; scalar_t__ i_sync_tid; int * cur_aio_dio; int i_completed_io_lock; int i_aio_dio_complete_list; scalar_t__ i_reserved_quota; int i_block_reservation_lock; scalar_t__ i_delalloc_reserved_flag; scalar_t__ i_da_metadata_calc_len; scalar_t__ i_allocated_meta_blocks; scalar_t__ i_reserved_meta_blocks; scalar_t__ i_reserved_data_blocks; int jinode; int i_prealloc_lock; int i_prealloc_list; int i_cached_extent; } ;
struct ext4_ext_cache {int dummy; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int ext4_inode_cachep ;
 int jbd2_journal_init_jbd_inode (int *,struct inode*) ;
 struct ext4_inode_info* kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct inode *ext4_alloc_inode(struct super_block *sb)
{
 struct ext4_inode_info *ei;

 ei = kmem_cache_alloc(ext4_inode_cachep, GFP_NOFS);
 if (!ei)
  return ((void*)0);

 ei->vfs_inode.i_version = 1;
 ei->vfs_inode.i_data.writeback_index = 0;
 memset(&ei->i_cached_extent, 0, sizeof(struct ext4_ext_cache));
 INIT_LIST_HEAD(&ei->i_prealloc_list);
 spin_lock_init(&ei->i_prealloc_lock);





 jbd2_journal_init_jbd_inode(&ei->jinode, &ei->vfs_inode);
 ei->i_reserved_data_blocks = 0;
 ei->i_reserved_meta_blocks = 0;
 ei->i_allocated_meta_blocks = 0;
 ei->i_da_metadata_calc_len = 0;
 ei->i_delalloc_reserved_flag = 0;
 spin_lock_init(&(ei->i_block_reservation_lock));



 INIT_LIST_HEAD(&ei->i_aio_dio_complete_list);
 spin_lock_init(&ei->i_completed_io_lock);
 ei->cur_aio_dio = ((void*)0);
 ei->i_sync_tid = 0;
 ei->i_datasync_tid = 0;
 atomic_set(&ei->i_aiodio_unwritten, 0);

 return &ei->vfs_inode;
}
