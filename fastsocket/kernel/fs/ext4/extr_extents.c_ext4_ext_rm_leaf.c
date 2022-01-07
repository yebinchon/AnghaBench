
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int ee_block; int ee_len; } ;
struct ext4_ext_path {int * p_bh; struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef int handle_t ;
typedef unsigned short ext4_lblk_t ;


 int EIO ;
 unsigned short EXT4_BLOCKS_PER_GROUP (int ) ;
 int EXT4_ERROR_INODE (struct inode*,char*,unsigned short,...) ;
 scalar_t__ EXT4_MAXQUOTAS_TRANS_BLOCKS (int ) ;
 struct ext4_extent* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 int EXT_MAX_BLOCKS ;
 unsigned short block ;
 int cpu_to_le16 (unsigned int) ;
 int ext4_ext_correct_indexes (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_access (int *,struct inode*,struct ext4_ext_path*) ;
 unsigned short ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_uninitialized (struct ext4_extent*) ;
 int ext4_ext_mark_uninitialized (struct ext4_extent*) ;
 unsigned short ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_rm_idx (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,int ) ;
 int ext4_ext_truncate_extend_restart (int *,struct inode*,int) ;
 int ext4_remove_blocks (int *,struct inode*,struct ext4_extent*,unsigned short,unsigned short) ;
 struct ext4_extent_header* ext_block_hdr (int *) ;
 int ext_debug (char*,unsigned short,unsigned int,...) ;
 int ext_depth (struct inode*) ;
 int le16_add_cpu (scalar_t__*,int) ;
 unsigned short le32_to_cpu (int ) ;
 int memmove (struct ext4_extent*,struct ext4_extent*,int) ;
 int memset (struct ext4_extent*,int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
ext4_ext_rm_leaf(handle_t *handle, struct inode *inode,
  struct ext4_ext_path *path, ext4_lblk_t start,
  ext4_lblk_t end)
{
 int err = 0, correct_index = 0;
 int depth = ext_depth(inode), credits;
 struct ext4_extent_header *eh;
 ext4_lblk_t a, b;
 unsigned num;
 ext4_lblk_t ex_ee_block;
 unsigned short ex_ee_len;
 unsigned uninitialized = 0;
 struct ext4_extent *ex;


 ext_debug("truncate since %u in leaf to %u\n", start, end);
 if (!path[depth].p_hdr)
  path[depth].p_hdr = ext_block_hdr(path[depth].p_bh);
 eh = path[depth].p_hdr;
 if (unlikely(path[depth].p_hdr == ((void*)0))) {
  EXT4_ERROR_INODE(inode, "path[%d].p_hdr == NULL", depth);
  return -EIO;
 }

 ex = EXT_LAST_EXTENT(eh);

 ex_ee_block = le32_to_cpu(ex->ee_block);
 ex_ee_len = ext4_ext_get_actual_len(ex);

 while (ex >= EXT_FIRST_EXTENT(eh) &&
   ex_ee_block + ex_ee_len > start) {

  if (ext4_ext_is_uninitialized(ex))
   uninitialized = 1;
  else
   uninitialized = 0;

  ext_debug("remove ext %u:[%d]%d\n", ex_ee_block,
    uninitialized, ex_ee_len);
  path[depth].p_ext = ex;

  a = ex_ee_block > start ? ex_ee_block : start;
  b = ex_ee_block+ex_ee_len - 1 < end ?
   ex_ee_block+ex_ee_len - 1 : end;

  ext_debug("  border %u:%u\n", a, b);


  if (end < ex_ee_block) {
   ex--;
   ex_ee_block = le32_to_cpu(ex->ee_block);
   ex_ee_len = ext4_ext_get_actual_len(ex);
   continue;
  } else if (b != ex_ee_block + ex_ee_len - 1) {
   EXT4_ERROR_INODE(inode,
      "can not handle truncate %u:%u "
      "on extent %u:%u",
      start, end, ex_ee_block,
      ex_ee_block + ex_ee_len - 1);
   err = -EIO;
   goto out;
  } else if (a != ex_ee_block) {

   num = a - ex_ee_block;
  } else {

   num = 0;
  }






  credits = 7 + 2*(ex_ee_len/EXT4_BLOCKS_PER_GROUP(inode->i_sb));
  if (ex == EXT_FIRST_EXTENT(eh)) {
   correct_index = 1;
   credits += (ext_depth(inode)) + 1;
  }
  credits += EXT4_MAXQUOTAS_TRANS_BLOCKS(inode->i_sb);

  err = ext4_ext_truncate_extend_restart(handle, inode, credits);
  if (err)
   goto out;

  err = ext4_ext_get_access(handle, inode, path + depth);
  if (err)
   goto out;

  err = ext4_remove_blocks(handle, inode, ex, a, b);
  if (err)
   goto out;

  if (num == 0)

   ext4_ext_store_pblock(ex, 0);

  ex->ee_len = cpu_to_le16(num);




  if (uninitialized && num)
   ext4_ext_mark_uninitialized(ex);




  if (num == 0) {
   if (end != EXT_MAX_BLOCKS - 1) {





    memmove(ex, ex+1, (EXT_LAST_EXTENT(eh) - ex) *
     sizeof(struct ext4_extent));


    memset(EXT_LAST_EXTENT(eh), 0,
     sizeof(struct ext4_extent));
   }
   le16_add_cpu(&eh->eh_entries, -1);
  }

  err = ext4_ext_dirty(handle, inode, path + depth);
  if (err)
   goto out;

  ext_debug("new extent: %u:%u:%llu\n", block, num,
    ext4_ext_pblock(ex));
  ex--;
  ex_ee_block = le32_to_cpu(ex->ee_block);
  ex_ee_len = ext4_ext_get_actual_len(ex);
 }

 if (correct_index && eh->eh_entries)
  err = ext4_ext_correct_indexes(handle, inode, path);



 if (err == 0 && eh->eh_entries == 0 && path[depth].p_bh != ((void*)0))
  err = ext4_ext_rm_idx(handle, inode, path + depth);

out:
 return err;
}
