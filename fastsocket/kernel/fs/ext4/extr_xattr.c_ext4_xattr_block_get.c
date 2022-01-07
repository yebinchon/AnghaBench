
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct ext4_xattr_entry {int e_value_offs; int e_value_size; } ;
struct buffer_head {scalar_t__ b_data; int b_size; int b_count; } ;
struct TYPE_4__ {int h_refcount; } ;
struct TYPE_3__ {int i_file_acl; } ;


 struct ext4_xattr_entry* BFIRST (struct buffer_head*) ;
 TYPE_2__* BHDR (struct buffer_head*) ;
 int EIO ;
 int ENODATA ;
 int ERANGE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 int ea_bdebug (struct buffer_head*,char*,int ,size_t) ;
 int ea_idebug (struct inode*,char*,int,...) ;
 int ext4_error (int ,char*,int ,int ) ;
 int ext4_xattr_cache_insert (struct buffer_head*) ;
 scalar_t__ ext4_xattr_check_block (struct buffer_head*) ;
 int ext4_xattr_find_entry (struct ext4_xattr_entry**,int,char const*,int ,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (void*,scalar_t__,size_t) ;
 struct buffer_head* sb_bread (int ,int ) ;

__attribute__((used)) static int
ext4_xattr_block_get(struct inode *inode, int name_index, const char *name,
       void *buffer, size_t buffer_size)
{
 struct buffer_head *bh = ((void*)0);
 struct ext4_xattr_entry *entry;
 size_t size;
 int error;

 ea_idebug(inode, "name=%d.%s, buffer=%p, buffer_size=%ld",
    name_index, name, buffer, (long)buffer_size);

 error = -ENODATA;
 if (!EXT4_I(inode)->i_file_acl)
  goto cleanup;
 ea_idebug(inode, "reading block %u", EXT4_I(inode)->i_file_acl);
 bh = sb_bread(inode->i_sb, EXT4_I(inode)->i_file_acl);
 if (!bh)
  goto cleanup;
 ea_bdebug(bh, "b_count=%d, refcount=%d",
  atomic_read(&(bh->b_count)), le32_to_cpu(BHDR(bh)->h_refcount));
 if (ext4_xattr_check_block(bh)) {
bad_block:
  ext4_error(inode->i_sb,
      "inode %lu: bad block %llu", inode->i_ino,
      EXT4_I(inode)->i_file_acl);
  error = -EIO;
  goto cleanup;
 }
 ext4_xattr_cache_insert(bh);
 entry = BFIRST(bh);
 error = ext4_xattr_find_entry(&entry, name_index, name, bh->b_size, 1);
 if (error == -EIO)
  goto bad_block;
 if (error)
  goto cleanup;
 size = le32_to_cpu(entry->e_value_size);
 if (buffer) {
  error = -ERANGE;
  if (size > buffer_size)
   goto cleanup;
  memcpy(buffer, bh->b_data + le16_to_cpu(entry->e_value_offs),
         size);
 }
 error = size;

cleanup:
 brelse(bh);
 return error;
}
