
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int * l_recs; int l_next_free_rec; } ;
struct ocfs2_extent_block {unsigned long long h_next_leaf_blk; int h_blkno; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {struct buffer_head* bh; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_complete_edge_insert (int *,struct ocfs2_path*,struct ocfs2_path*,int) ;
 int ocfs2_et_root_journal_access (int *,struct ocfs2_extent_tree*,int ) ;
 int ocfs2_et_set_last_eb_blk (struct ocfs2_extent_tree*,int ) ;
 scalar_t__ ocfs2_is_empty_extent (int *) ;
 int ocfs2_journal_access_eb (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_path_bh_journal_access (int *,int ,struct ocfs2_path*,int) ;
 int ocfs2_remove_empty_extent (struct ocfs2_extent_list*) ;
 int ocfs2_rotate_leaf (struct ocfs2_extent_list*,int *) ;
 int ocfs2_unlink_subtree (int *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_update_edge_lengths (int *,struct ocfs2_extent_tree*,int,struct ocfs2_path*) ;
 struct buffer_head* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;
 int path_num_items (struct ocfs2_path*) ;
 struct buffer_head* path_root_bh (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_rotate_subtree_left(handle_t *handle,
         struct ocfs2_extent_tree *et,
         struct ocfs2_path *left_path,
         struct ocfs2_path *right_path,
         int subtree_index,
         struct ocfs2_cached_dealloc_ctxt *dealloc,
         int *deleted)
{
 int ret, i, del_right_subtree = 0, right_has_empty = 0;
 struct buffer_head *root_bh, *et_root_bh = path_root_bh(right_path);
 struct ocfs2_extent_list *right_leaf_el, *left_leaf_el;
 struct ocfs2_extent_block *eb;

 *deleted = 0;

 right_leaf_el = path_leaf_el(right_path);
 left_leaf_el = path_leaf_el(left_path);
 root_bh = left_path->p_node[subtree_index].bh;
 BUG_ON(root_bh != right_path->p_node[subtree_index].bh);

 if (!ocfs2_is_empty_extent(&left_leaf_el->l_recs[0]))
  return 0;

 eb = (struct ocfs2_extent_block *)path_leaf_bh(right_path)->b_data;
 if (ocfs2_is_empty_extent(&right_leaf_el->l_recs[0])) {
  if (eb->h_next_leaf_blk != 0ULL)
   return -EAGAIN;

  if (le16_to_cpu(right_leaf_el->l_next_free_rec) > 1) {
   ret = ocfs2_journal_access_eb(handle, et->et_ci,
            path_leaf_bh(right_path),
            OCFS2_JOURNAL_ACCESS_WRITE);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }

   ocfs2_remove_empty_extent(right_leaf_el);
  } else
   right_has_empty = 1;
 }

 if (eb->h_next_leaf_blk == 0ULL &&
     le16_to_cpu(right_leaf_el->l_next_free_rec) == 1) {




  ret = ocfs2_et_root_journal_access(handle, et,
         OCFS2_JOURNAL_ACCESS_WRITE);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  del_right_subtree = 1;
 }





 BUG_ON(right_has_empty && !del_right_subtree);

 ret = ocfs2_path_bh_journal_access(handle, et->et_ci, right_path,
        subtree_index);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 for(i = subtree_index + 1; i < path_num_items(right_path); i++) {
  ret = ocfs2_path_bh_journal_access(handle, et->et_ci,
         right_path, i);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_path_bh_journal_access(handle, et->et_ci,
         left_path, i);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (!right_has_empty) {






  ocfs2_rotate_leaf(left_leaf_el, &right_leaf_el->l_recs[0]);
  memset(&right_leaf_el->l_recs[0], 0,
         sizeof(struct ocfs2_extent_rec));
 }
 if (eb->h_next_leaf_blk == 0ULL) {






  ocfs2_remove_empty_extent(right_leaf_el);
 }

 ret = ocfs2_journal_dirty(handle, path_leaf_bh(left_path));
 if (ret)
  mlog_errno(ret);
 ret = ocfs2_journal_dirty(handle, path_leaf_bh(right_path));
 if (ret)
  mlog_errno(ret);

 if (del_right_subtree) {
  ocfs2_unlink_subtree(handle, et, left_path, right_path,
         subtree_index, dealloc);
  ret = ocfs2_update_edge_lengths(handle, et, subtree_index,
      left_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  eb = (struct ocfs2_extent_block *)path_leaf_bh(left_path)->b_data;
  ocfs2_et_set_last_eb_blk(et, le64_to_cpu(eb->h_blkno));






  if (right_has_empty)
   ocfs2_remove_empty_extent(left_leaf_el);

  ret = ocfs2_journal_dirty(handle, et_root_bh);
  if (ret)
   mlog_errno(ret);

  *deleted = 1;
 } else
  ocfs2_complete_edge_insert(handle, left_path, right_path,
        subtree_index);

out:
 return ret;
}
