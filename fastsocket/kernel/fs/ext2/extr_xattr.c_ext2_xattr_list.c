
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xattr_handler {size_t (* list ) (struct inode*,char*,size_t,int ,int ) ;} ;
struct inode {int i_ino; int i_sb; } ;
struct ext2_xattr_entry {int e_name_len; int e_name; int e_name_index; } ;
struct buffer_head {char* b_data; int b_size; int b_count; } ;
struct TYPE_4__ {int xattr_sem; int i_file_acl; } ;
struct TYPE_3__ {scalar_t__ h_magic; scalar_t__ h_blocks; int h_refcount; } ;


 int EIO ;
 int ERANGE ;
 TYPE_2__* EXT2_I (struct inode*) ;
 int EXT2_XATTR_MAGIC ;
 struct ext2_xattr_entry* EXT2_XATTR_NEXT (struct ext2_xattr_entry*) ;
 struct ext2_xattr_entry* FIRST_ENTRY (struct buffer_head*) ;
 TYPE_1__* HDR (struct buffer_head*) ;
 int IS_LAST_ENTRY (struct ext2_xattr_entry*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int down_read (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int ,int ) ;
 int ea_idebug (struct inode*,char*,...) ;
 int ext2_error (int ,char*,char*,int ,int ) ;
 scalar_t__ ext2_xattr_cache_insert (struct buffer_head*) ;
 struct xattr_handler* ext2_xattr_handler (int ) ;
 int le32_to_cpu (int ) ;
 struct buffer_head* sb_bread (int ,int ) ;
 size_t stub1 (struct inode*,char*,size_t,int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static int
ext2_xattr_list(struct inode *inode, char *buffer, size_t buffer_size)
{
 struct buffer_head *bh = ((void*)0);
 struct ext2_xattr_entry *entry;
 char *end;
 size_t rest = buffer_size;
 int error;

 ea_idebug(inode, "buffer=%p, buffer_size=%ld",
    buffer, (long)buffer_size);

 down_read(&EXT2_I(inode)->xattr_sem);
 error = 0;
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
bad_block: ext2_error(inode->i_sb, "ext2_xattr_list",
   "inode %ld: bad block %d", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  error = -EIO;
  goto cleanup;
 }


 entry = FIRST_ENTRY(bh);
 while (!IS_LAST_ENTRY(entry)) {
  struct ext2_xattr_entry *next = EXT2_XATTR_NEXT(entry);

  if ((char *)next >= end)
   goto bad_block;
  entry = next;
 }
 if (ext2_xattr_cache_insert(bh))
  ea_idebug(inode, "cache insert failed");


 for (entry = FIRST_ENTRY(bh); !IS_LAST_ENTRY(entry);
      entry = EXT2_XATTR_NEXT(entry)) {
  struct xattr_handler *handler =
   ext2_xattr_handler(entry->e_name_index);

  if (handler) {
   size_t size = handler->list(inode, buffer, rest,
          entry->e_name,
          entry->e_name_len);
   if (buffer) {
    if (size > rest) {
     error = -ERANGE;
     goto cleanup;
    }
    buffer += size;
   }
   rest -= size;
  }
 }
 error = buffer_size - rest;

cleanup:
 brelse(bh);
 up_read(&EXT2_I(inode)->xattr_sem);

 return error;
}
