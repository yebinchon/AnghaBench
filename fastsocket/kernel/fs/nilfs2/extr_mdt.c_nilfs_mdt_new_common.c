
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_bdi; int ns_blocksize_bits; } ;
struct super_block {int dummy; } ;
struct nilfs_mdt_info {int mi_sem; struct the_nilfs* mi_nilfs; } ;
struct address_space {int backing_dev_info; int * assoc_mapping; scalar_t__ flags; int * host; } ;
struct inode {int i_nlink; struct address_space* i_mapping; int i_alloc_sem; int i_mutex; int i_lock; scalar_t__ i_state; int i_sb_list; int i_list; scalar_t__ dirtied_when; int * i_security; scalar_t__ i_rdev; int * i_cdev; int * i_bdev; int * i_pipe; int i_dquot; scalar_t__ i_generation; scalar_t__ i_bytes; scalar_t__ i_blocks; scalar_t__ i_size; int i_writecount; struct nilfs_mdt_info* i_private; int i_mode; int i_ino; int i_count; scalar_t__ i_flags; int i_blkbits; struct super_block* i_sb; struct address_space i_data; } ;
typedef int ino_t ;
typedef int gfp_t ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int S_IFREG ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 struct nilfs_mdt_info* kzalloc (int,int ) ;
 int mapping_set_gfp_mask (struct address_space* const,int ) ;
 int memset (int *,int ,int) ;
 int mutex_init (int *) ;
 struct inode* nilfs_alloc_inode_common (struct the_nilfs*) ;
 int nilfs_destroy_inode (struct inode*) ;
 int spin_lock_init (int *) ;

struct inode *
nilfs_mdt_new_common(struct the_nilfs *nilfs, struct super_block *sb,
       ino_t ino, gfp_t gfp_mask)
{
 struct inode *inode = nilfs_alloc_inode_common(nilfs);

 if (!inode)
  return ((void*)0);
 else {
  struct address_space * const mapping = &inode->i_data;
  struct nilfs_mdt_info *mi = kzalloc(sizeof(*mi), GFP_NOFS);

  if (!mi) {
   nilfs_destroy_inode(inode);
   return ((void*)0);
  }
  mi->mi_nilfs = nilfs;
  init_rwsem(&mi->mi_sem);

  inode->i_sb = sb;
  inode->i_blkbits = nilfs->ns_blocksize_bits;
  inode->i_flags = 0;
  atomic_set(&inode->i_count, 1);
  inode->i_nlink = 1;
  inode->i_ino = ino;
  inode->i_mode = S_IFREG;
  inode->i_private = mi;
  spin_lock_init(&inode->i_lock);
  mutex_init(&inode->i_mutex);
  init_rwsem(&inode->i_alloc_sem);

  mapping->host = ((void*)0);
  mapping->flags = 0;
  mapping_set_gfp_mask(mapping, gfp_mask);
  mapping->assoc_mapping = ((void*)0);
  mapping->backing_dev_info = nilfs->ns_bdi;

  inode->i_mapping = mapping;
 }

 return inode;
}
