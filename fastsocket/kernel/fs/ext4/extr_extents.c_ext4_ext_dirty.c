
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_ext_path {scalar_t__ p_bh; } ;
typedef int handle_t ;


 int ext4_handle_dirty_metadata (int *,struct inode*,scalar_t__) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;

__attribute__((used)) static int ext4_ext_dirty(handle_t *handle, struct inode *inode,
    struct ext4_ext_path *path)
{
 int err;
 if (path->p_bh) {

  err = ext4_handle_dirty_metadata(handle, inode, path->p_bh);
 } else {

  err = ext4_mark_inode_dirty(handle, inode);
 }
 return err;
}
