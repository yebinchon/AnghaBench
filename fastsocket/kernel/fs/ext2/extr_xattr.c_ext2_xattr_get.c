
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_ino; } ;
struct ext2_xattr_entry {int e_name_index; size_t e_name_len; scalar_t__ e_value_block; int e_value_offs; int e_value_size; int e_name; } ;
struct buffer_head {char* b_data; int b_size; int b_count; } ;
struct TYPE_7__ {int xattr_sem; int i_file_acl; } ;
struct TYPE_6__ {scalar_t__ h_magic; scalar_t__ h_blocks; int h_refcount; } ;
struct TYPE_5__ {size_t s_blocksize; } ;


 int EINVAL ;
 int EIO ;
 int ENODATA ;
 int ERANGE ;
 TYPE_4__* EXT2_I (struct inode*) ;
 int EXT2_XATTR_MAGIC ;
 struct ext2_xattr_entry* EXT2_XATTR_NEXT (struct ext2_xattr_entry*) ;
 struct ext2_xattr_entry* FIRST_ENTRY (struct buffer_head*) ;
 TYPE_3__* HDR (struct buffer_head*) ;
 int IS_LAST_ENTRY (struct ext2_xattr_entry*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int down_read (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int ,size_t) ;
 int ea_idebug (struct inode*,char*,...) ;
 int ext2_error (TYPE_1__*,char*,char*,int ,int ) ;
 scalar_t__ ext2_xattr_cache_insert (struct buffer_head*) ;
 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 int memcpy (void*,char*,size_t) ;
 struct buffer_head* sb_bread (TYPE_1__*,int ) ;
 size_t strlen (char const*) ;
 int up_read (int *) ;

int
ext2_xattr_get(struct inode *inode, int name_index, const char *name,
        void *buffer, size_t buffer_size)
{
 struct buffer_head *bh = ((void*)0);
 struct ext2_xattr_entry *entry;
 size_t name_len, size;
 char *end;
 int error;

 ea_idebug(inode, "name=%d.%s, buffer=%p, buffer_size=%ld",
    name_index, name, buffer, (long)buffer_size);

 if (name == ((void*)0))
  return -EINVAL;
 down_read(&EXT2_I(inode)->xattr_sem);
 error = -ENODATA;
 if (!EXT2_I(inode)->i_file_acl)
  goto cleanup;
 ea_idebug(inode, "reading block %d", EXT2_I(inode)->i_file_acl);
 bh = sb_bread(inode->i_sb, EXT2_I(inode)->i_file_acl);
 error = -EIO;
 if (!bh)
  goto cleanup;
 ea_bdebug(bh, "b_count=%d, refcount=%d",
  atomic_read(&(bh->b_count)), le32_to_cpu(HDR(bh)->h_refcount));
 end = bh->b_data + bh->b_size;
 if (HDR(bh)->h_magic != cpu_to_le32(EXT2_XATTR_MAGIC) ||
     HDR(bh)->h_blocks != cpu_to_le32(1)) {
bad_block: ext2_error(inode->i_sb, "ext2_xattr_get",
   "inode %ld: bad block %d", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  error = -EIO;
  goto cleanup;
 }

 name_len = strlen(name);

 error = -ERANGE;
 if (name_len > 255)
  goto cleanup;
 entry = FIRST_ENTRY(bh);
 while (!IS_LAST_ENTRY(entry)) {
  struct ext2_xattr_entry *next =
   EXT2_XATTR_NEXT(entry);
  if ((char *)next >= end)
   goto bad_block;
  if (name_index == entry->e_name_index &&
      name_len == entry->e_name_len &&
      memcmp(name, entry->e_name, name_len) == 0)
   goto found;
  entry = next;
 }

 while (!IS_LAST_ENTRY(entry)) {
  struct ext2_xattr_entry *next =
   EXT2_XATTR_NEXT(entry);
  if ((char *)next >= end)
   goto bad_block;
  entry = next;
 }
 if (ext2_xattr_cache_insert(bh))
  ea_idebug(inode, "cache insert failed");
 error = -ENODATA;
 goto cleanup;
found:

 if (entry->e_value_block != 0)
  goto bad_block;
 size = le32_to_cpu(entry->e_value_size);
 if (size > inode->i_sb->s_blocksize ||
     le16_to_cpu(entry->e_value_offs) + size > inode->i_sb->s_blocksize)
  goto bad_block;

 if (ext2_xattr_cache_insert(bh))
  ea_idebug(inode, "cache insert failed");
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
 up_read(&EXT2_I(inode)->xattr_sem);

 return error;
}
