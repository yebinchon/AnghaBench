
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_mtime; int i_ctime; } ;
struct iattr {scalar_t__ ia_size; int ia_valid; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int runtime_flags; struct btrfs_root* root; } ;


 int ATTR_CTIME ;
 int ATTR_MTIME ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_ORDERED_DATA_CLOSE ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_cont_expand (struct inode*,scalar_t__,scalar_t__) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_ordered_update_i_size (struct inode*,scalar_t__,int *) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_truncate (struct inode*) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int current_fs_time (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int set_bit (int ,int *) ;
 int truncate_pagecache (struct inode*,scalar_t__,scalar_t__) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

__attribute__((used)) static int btrfs_setsize(struct inode *inode, struct iattr *attr)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;
 loff_t oldsize = i_size_read(inode);
 loff_t newsize = attr->ia_size;
 int mask = attr->ia_valid;
 int ret;

 if (newsize == oldsize)
  return 0;







 if (newsize != oldsize && (!(mask & (ATTR_CTIME | ATTR_MTIME))))
  inode->i_ctime = inode->i_mtime = current_fs_time(inode->i_sb);

 if (newsize > oldsize) {
  truncate_pagecache(inode, oldsize, newsize);
  ret = btrfs_cont_expand(inode, oldsize, newsize);
  if (ret)
   return ret;

  trans = btrfs_start_transaction(root, 1);
  if (IS_ERR(trans))
   return PTR_ERR(trans);

  i_size_write(inode, newsize);
  btrfs_ordered_update_i_size(inode, i_size_read(inode), ((void*)0));
  ret = btrfs_update_inode(trans, root, inode);
  btrfs_end_transaction(trans, root);
 } else {






  if (newsize == 0)
   set_bit(BTRFS_INODE_ORDERED_DATA_CLOSE,
    &BTRFS_I(inode)->runtime_flags);


  truncate_setsize(inode, newsize);
  ret = btrfs_truncate(inode);
 }

 return ret;
}
