
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int b_count; } ;
struct TYPE_4__ {int h_refcount; } ;
struct TYPE_3__ {int i_file_acl; } ;


 int BFIRST (struct buffer_head*) ;
 TYPE_2__* BHDR (struct buffer_head*) ;
 int EIO ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 int ea_bdebug (struct buffer_head*,char*,int ,int ) ;
 int ea_idebug (struct inode*,char*,char*,...) ;
 int ext4_error (int ,char*,int ,int ) ;
 int ext4_xattr_cache_insert (struct buffer_head*) ;
 scalar_t__ ext4_xattr_check_block (struct buffer_head*) ;
 int ext4_xattr_list_entries (struct inode*,int ,char*,size_t) ;
 int le32_to_cpu (int ) ;
 struct buffer_head* sb_bread (int ,int ) ;

__attribute__((used)) static int
ext4_xattr_block_list(struct inode *inode, char *buffer, size_t buffer_size)
{
 struct buffer_head *bh = ((void*)0);
 int error;

 ea_idebug(inode, "buffer=%p, buffer_size=%ld",
    buffer, (long)buffer_size);

 error = 0;
 if (!EXT4_I(inode)->i_file_acl)
  goto cleanup;
 ea_idebug(inode, "reading block %u", EXT4_I(inode)->i_file_acl);
 bh = sb_bread(inode->i_sb, EXT4_I(inode)->i_file_acl);
 error = -EIO;
 if (!bh)
  goto cleanup;
 ea_bdebug(bh, "b_count=%d, refcount=%d",
  atomic_read(&(bh->b_count)), le32_to_cpu(BHDR(bh)->h_refcount));
 if (ext4_xattr_check_block(bh)) {
  ext4_error(inode->i_sb,
      "inode %lu: bad block %llu", inode->i_ino,
      EXT4_I(inode)->i_file_acl);
  error = -EIO;
  goto cleanup;
 }
 ext4_xattr_cache_insert(bh);
 error = ext4_xattr_list_entries(inode, BFIRST(bh), buffer, buffer_size);

cleanup:
 brelse(bh);

 return error;
}
