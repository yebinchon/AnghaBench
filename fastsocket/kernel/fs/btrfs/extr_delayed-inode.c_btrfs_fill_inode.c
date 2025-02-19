
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int i_generation; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; scalar_t__ i_rdev; int i_version; int i_nlink; int i_mode; int i_gid; int i_uid; } ;
struct btrfs_timespec {int dummy; } ;
struct btrfs_inode_item {int dummy; } ;
struct btrfs_delayed_node {int mutex; struct btrfs_inode_item inode_item; int inode_dirty; } ;
struct TYPE_8__ {scalar_t__ index_cnt; int generation; int flags; } ;


 TYPE_4__* BTRFS_I (struct inode*) ;
 int ENOENT ;
 struct btrfs_delayed_node* btrfs_get_delayed_node (struct inode*) ;
 int btrfs_i_size_write (struct inode*,int ) ;
 struct btrfs_timespec* btrfs_inode_atime (struct btrfs_inode_item*) ;
 struct btrfs_timespec* btrfs_inode_ctime (struct btrfs_inode_item*) ;
 struct btrfs_timespec* btrfs_inode_mtime (struct btrfs_inode_item*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;
 int btrfs_stack_inode_flags (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_generation (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_gid (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_mode (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_nbytes (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_nlink (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_rdev (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_sequence (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_size (struct btrfs_inode_item*) ;
 int btrfs_stack_inode_uid (struct btrfs_inode_item*) ;
 void* btrfs_stack_timespec_nsec (struct btrfs_timespec*) ;
 void* btrfs_stack_timespec_sec (struct btrfs_timespec*) ;
 int inode_set_bytes (struct inode*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_fill_inode(struct inode *inode, u32 *rdev)
{
 struct btrfs_delayed_node *delayed_node;
 struct btrfs_inode_item *inode_item;
 struct btrfs_timespec *tspec;

 delayed_node = btrfs_get_delayed_node(inode);
 if (!delayed_node)
  return -ENOENT;

 mutex_lock(&delayed_node->mutex);
 if (!delayed_node->inode_dirty) {
  mutex_unlock(&delayed_node->mutex);
  btrfs_release_delayed_node(delayed_node);
  return -ENOENT;
 }

 inode_item = &delayed_node->inode_item;

 inode->i_uid = btrfs_stack_inode_uid(inode_item);
 inode->i_gid = btrfs_stack_inode_gid(inode_item);
 btrfs_i_size_write(inode, btrfs_stack_inode_size(inode_item));
 inode->i_mode = btrfs_stack_inode_mode(inode_item);
 inode->i_nlink = btrfs_stack_inode_nlink(inode_item);
 inode_set_bytes(inode, btrfs_stack_inode_nbytes(inode_item));
 BTRFS_I(inode)->generation = btrfs_stack_inode_generation(inode_item);
 inode->i_version = btrfs_stack_inode_sequence(inode_item);
 inode->i_rdev = 0;
 *rdev = btrfs_stack_inode_rdev(inode_item);
 BTRFS_I(inode)->flags = btrfs_stack_inode_flags(inode_item);

 tspec = btrfs_inode_atime(inode_item);
 inode->i_atime.tv_sec = btrfs_stack_timespec_sec(tspec);
 inode->i_atime.tv_nsec = btrfs_stack_timespec_nsec(tspec);

 tspec = btrfs_inode_mtime(inode_item);
 inode->i_mtime.tv_sec = btrfs_stack_timespec_sec(tspec);
 inode->i_mtime.tv_nsec = btrfs_stack_timespec_nsec(tspec);

 tspec = btrfs_inode_ctime(inode_item);
 inode->i_ctime.tv_sec = btrfs_stack_timespec_sec(tspec);
 inode->i_ctime.tv_nsec = btrfs_stack_timespec_nsec(tspec);

 inode->i_generation = BTRFS_I(inode)->generation;
 BTRFS_I(inode)->index_cnt = (u64)-1;

 mutex_unlock(&delayed_node->mutex);
 btrfs_release_delayed_node(delayed_node);
 return 0;
}
