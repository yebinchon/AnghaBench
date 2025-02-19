
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ h_magic; scalar_t__ h_blocks; } ;
struct TYPE_3__ {scalar_t__ i_file_acl; } ;


 TYPE_2__* BHDR (struct buffer_head*) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_XATTR_MAGIC ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int ext4_error (int ,char*,int ,scalar_t__) ;
 int ext4_xattr_release_block (int *,struct inode*,struct buffer_head*) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;

void
ext4_xattr_delete_inode(handle_t *handle, struct inode *inode)
{
 struct buffer_head *bh = ((void*)0);

 if (!EXT4_I(inode)->i_file_acl)
  goto cleanup;
 bh = sb_bread(inode->i_sb, EXT4_I(inode)->i_file_acl);
 if (!bh) {
  ext4_error(inode->i_sb, "inode %lu: block %llu read error",
      inode->i_ino, EXT4_I(inode)->i_file_acl);
  goto cleanup;
 }
 if (BHDR(bh)->h_magic != cpu_to_le32(EXT4_XATTR_MAGIC) ||
     BHDR(bh)->h_blocks != cpu_to_le32(1)) {
  ext4_error(inode->i_sb, "inode %lu: bad block %llu",
      inode->i_ino, EXT4_I(inode)->i_file_acl);
  goto cleanup;
 }
 ext4_xattr_release_block(handle, inode, bh);
 EXT4_I(inode)->i_file_acl = 0;

cleanup:
 brelse(bh);
}
