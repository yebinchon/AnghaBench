
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_dx_root_block {int dr_free_blk; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_prev_leaf_bh; struct buffer_head* dl_leaf_bh; } ;
struct ocfs2_dir_block_trailer {int db_free_next; int db_free_rec_len; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOSPC ;
 int OCFS2_DIR_REC_LEN (int) ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_dir_block_direct (struct inode*,scalar_t__,struct buffer_head**) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;

__attribute__((used)) static int ocfs2_search_dx_free_list(struct inode *dir,
         struct buffer_head *dx_root_bh,
         int namelen,
         struct ocfs2_dir_lookup_result *lookup)
{
 int ret = -ENOSPC;
 struct buffer_head *leaf_bh = ((void*)0), *prev_leaf_bh = ((void*)0);
 struct ocfs2_dir_block_trailer *db;
 u64 next_block;
 int rec_len = OCFS2_DIR_REC_LEN(namelen);
 struct ocfs2_dx_root_block *dx_root;

 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
 next_block = le64_to_cpu(dx_root->dr_free_blk);

 while (next_block) {
  brelse(prev_leaf_bh);
  prev_leaf_bh = leaf_bh;
  leaf_bh = ((void*)0);

  ret = ocfs2_read_dir_block_direct(dir, next_block, &leaf_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  db = ocfs2_trailer_from_bh(leaf_bh, dir->i_sb);
  if (rec_len <= le16_to_cpu(db->db_free_rec_len)) {
   lookup->dl_leaf_bh = leaf_bh;
   lookup->dl_prev_leaf_bh = prev_leaf_bh;
   leaf_bh = ((void*)0);
   prev_leaf_bh = ((void*)0);
   break;
  }

  next_block = le64_to_cpu(db->db_free_next);
 }

 if (!next_block)
  ret = -ENOSPC;

out:

 brelse(leaf_bh);
 brelse(prev_leaf_bh);
 return ret;
}
