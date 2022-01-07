
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dx_entry_list {int de_num_used; scalar_t__ de_entries; int de_count; } ;
struct ocfs2_dx_root_block {int dr_num_entries; int dr_free_blk; struct ocfs2_dx_entry_list dr_entries; } ;
struct ocfs2_dx_leaf {struct ocfs2_dx_entry_list dl_list; } ;
struct ocfs2_dx_entry {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_leaf_bh; int dl_entry; struct ocfs2_dx_entry* dl_dx_entry; struct buffer_head* dl_leaf_bh; struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dir_block_trailer {scalar_t__ db_free_rec_len; int db_free_next; } ;
struct inode {int i_sb; } ;
struct buffer_head {int b_blocknr; int b_size; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int EIO ;
 int INODE_CACHE (struct inode*) ;
 int ML_ERROR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int __ocfs2_delete_entry (int *,struct inode*,int ,struct buffer_head*,scalar_t__,int ) ;
 scalar_t__ cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 int mlog (int ,char*,unsigned long long,int,...) ;
 int mlog_errno (int) ;
 int ocfs2_dx_list_remove_entry (struct ocfs2_dx_entry_list*,int) ;
 scalar_t__ ocfs2_dx_root_inline (struct ocfs2_dx_root_block*) ;
 int ocfs2_find_max_rec_len (int ,struct buffer_head*) ;
 int ocfs2_journal_access_dl (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_dr (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;

__attribute__((used)) static int ocfs2_delete_entry_dx(handle_t *handle, struct inode *dir,
     struct ocfs2_dir_lookup_result *lookup)
{
 int ret, index, max_rec_len, add_to_free_list = 0;
 struct buffer_head *dx_root_bh = lookup->dl_dx_root_bh;
 struct buffer_head *leaf_bh = lookup->dl_leaf_bh;
 struct ocfs2_dx_leaf *dx_leaf;
 struct ocfs2_dx_entry *dx_entry = lookup->dl_dx_entry;
 struct ocfs2_dir_block_trailer *trailer;
 struct ocfs2_dx_root_block *dx_root;
 struct ocfs2_dx_entry_list *entry_list;
 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
 if (ocfs2_dx_root_inline(dx_root)) {
  entry_list = &dx_root->dr_entries;
 } else {
  dx_leaf = (struct ocfs2_dx_leaf *) lookup->dl_dx_leaf_bh->b_data;
  entry_list = &dx_leaf->dl_list;
 }



 BUG_ON(le16_to_cpu(entry_list->de_count) <= 0);
 BUG_ON(le16_to_cpu(entry_list->de_num_used) <= 0);

 index = (char *)dx_entry - (char *)entry_list->de_entries;
 index /= sizeof(*dx_entry);

 if (index >= le16_to_cpu(entry_list->de_num_used)) {
  mlog(ML_ERROR, "Dir %llu: Bad dx_entry ptr idx %d, (%p, %p)\n",
       (unsigned long long)OCFS2_I(dir)->ip_blkno, index,
       entry_list, dx_entry);
  return -EIO;
 }






 trailer = ocfs2_trailer_from_bh(leaf_bh, dir->i_sb);
 if (trailer->db_free_rec_len == 0)
  add_to_free_list = 1;
 ret = ocfs2_journal_access_dr(handle, INODE_CACHE(dir), dx_root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (!ocfs2_dx_root_inline(dx_root)) {
  ret = ocfs2_journal_access_dl(handle, INODE_CACHE(dir),
           lookup->dl_dx_leaf_bh,
           OCFS2_JOURNAL_ACCESS_WRITE);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 mlog(0, "Dir %llu: delete entry at index: %d\n",
      (unsigned long long)OCFS2_I(dir)->ip_blkno, index);

 ret = __ocfs2_delete_entry(handle, dir, lookup->dl_entry,
       leaf_bh, leaf_bh->b_data, leaf_bh->b_size);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 max_rec_len = ocfs2_find_max_rec_len(dir->i_sb, leaf_bh);
 trailer->db_free_rec_len = cpu_to_le16(max_rec_len);
 if (add_to_free_list) {
  trailer->db_free_next = dx_root->dr_free_blk;
  dx_root->dr_free_blk = cpu_to_le64(leaf_bh->b_blocknr);
  ocfs2_journal_dirty(handle, dx_root_bh);
 }


 ocfs2_journal_dirty(handle, leaf_bh);

 le32_add_cpu(&dx_root->dr_num_entries, -1);
 ocfs2_journal_dirty(handle, dx_root_bh);

 ocfs2_dx_list_remove_entry(entry_list, index);

 if (!ocfs2_dx_root_inline(dx_root))
  ocfs2_journal_dirty(handle, lookup->dl_dx_leaf_bh);

out:
 return ret;
}
