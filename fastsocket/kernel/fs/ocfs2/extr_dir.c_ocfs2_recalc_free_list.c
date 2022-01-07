
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_lookup_result {int dl_leaf_bh; } ;
struct ocfs2_dir_block_trailer {int db_free_rec_len; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;


 int cpu_to_le16 (int) ;
 int ocfs2_find_max_rec_len (int ,int ) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int ocfs2_remove_block_from_free_list (struct inode*,int *,struct ocfs2_dir_lookup_result*) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (int ,int ) ;

__attribute__((used)) static void ocfs2_recalc_free_list(struct inode *dir, handle_t *handle,
       struct ocfs2_dir_lookup_result *lookup)
{
 int max_rec_len;
 struct ocfs2_dir_block_trailer *trailer;


 max_rec_len = ocfs2_find_max_rec_len(dir->i_sb, lookup->dl_leaf_bh);
 if (max_rec_len) {





  trailer = ocfs2_trailer_from_bh(lookup->dl_leaf_bh, dir->i_sb);
  trailer->db_free_rec_len = cpu_to_le16(max_rec_len);
  ocfs2_journal_dirty(handle, lookup->dl_leaf_bh);
 } else {
  ocfs2_remove_block_from_free_list(dir, handle, lookup);
 }
}
