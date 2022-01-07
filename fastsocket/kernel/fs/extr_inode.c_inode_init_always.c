
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {TYPE_4__* s_bdev; TYPE_1__* s_type; int s_blocksize_bits; } ;
struct inode_operations {int dummy; } ;
struct address_space {struct backing_dev_info* backing_dev_info; scalar_t__ writeback_index; int * assoc_mapping; scalar_t__ flags; struct inode* host; struct address_space_operations const* a_ops; } ;
struct inode {int i_nlink; scalar_t__ i_fsnotify_mask; int i_default_acl; int i_acl; struct address_space* i_mapping; int * i_private; int i_alloc_sem; int i_mutex; int i_lock; scalar_t__ dirtied_when; scalar_t__ i_rdev; int * i_cdev; int * i_bdev; int * i_pipe; int i_dquot; scalar_t__ i_generation; scalar_t__ i_bytes; scalar_t__ i_blocks; scalar_t__ i_size; int i_writecount; scalar_t__ i_gid; scalar_t__ i_uid; struct file_operations const* i_fop; struct inode_operations const* i_op; int i_count; scalar_t__ i_flags; int i_blkbits; struct super_block* i_sb; struct address_space i_data; } ;
struct file_operations {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space_operations {int dummy; } ;
struct TYPE_8__ {TYPE_3__* bd_inode; } ;
struct TYPE_7__ {TYPE_2__* i_mapping; } ;
struct TYPE_6__ {struct backing_dev_info* backing_dev_info; } ;
struct TYPE_5__ {int i_alloc_sem_key; int i_mutex_key; int i_lock_key; } ;


 int ACL_NOT_CACHED ;
 int ENOMEM ;
 int GFP_HIGHUSER_MOVABLE ;
 int atomic_set (int *,int) ;
 struct backing_dev_info default_backing_dev_info ;
 int init_rwsem (int *) ;
 int lockdep_set_class (int *,int *) ;
 int mapping_set_gfp_mask (struct address_space* const,int ) ;
 int memset (int *,int ,int) ;
 int mutex_init (int *) ;
 scalar_t__ security_inode_alloc (struct inode*) ;
 int spin_lock_init (int *) ;

int inode_init_always(struct super_block *sb, struct inode *inode)
{
 static const struct address_space_operations empty_aops;
 static const struct inode_operations empty_iops;
 static const struct file_operations empty_fops;
 struct address_space *const mapping = &inode->i_data;

 inode->i_sb = sb;
 inode->i_blkbits = sb->s_blocksize_bits;
 inode->i_flags = 0;
 atomic_set(&inode->i_count, 1);
 inode->i_op = &empty_iops;
 inode->i_fop = &empty_fops;
 inode->i_nlink = 1;
 inode->i_uid = 0;
 inode->i_gid = 0;
 atomic_set(&inode->i_writecount, 0);
 inode->i_size = 0;
 inode->i_blocks = 0;
 inode->i_bytes = 0;
 inode->i_generation = 0;



 inode->i_pipe = ((void*)0);
 inode->i_bdev = ((void*)0);
 inode->i_cdev = ((void*)0);
 inode->i_rdev = 0;
 inode->dirtied_when = 0;

 if (security_inode_alloc(inode))
  goto out;
 spin_lock_init(&inode->i_lock);
 lockdep_set_class(&inode->i_lock, &sb->s_type->i_lock_key);

 mutex_init(&inode->i_mutex);
 lockdep_set_class(&inode->i_mutex, &sb->s_type->i_mutex_key);

 init_rwsem(&inode->i_alloc_sem);
 lockdep_set_class(&inode->i_alloc_sem, &sb->s_type->i_alloc_sem_key);

 mapping->a_ops = &empty_aops;
 mapping->host = inode;
 mapping->flags = 0;
 mapping_set_gfp_mask(mapping, GFP_HIGHUSER_MOVABLE);
 mapping->assoc_mapping = ((void*)0);
 mapping->backing_dev_info = &default_backing_dev_info;
 mapping->writeback_index = 0;






 if (sb->s_bdev) {
  struct backing_dev_info *bdi;

  bdi = sb->s_bdev->bd_inode->i_mapping->backing_dev_info;
  mapping->backing_dev_info = bdi;
 }
 inode->i_private = ((void*)0);
 inode->i_mapping = mapping;
 return 0;
out:
 return -ENOMEM;
}
