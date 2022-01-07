
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_insert_type {scalar_t__ ins_split; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 scalar_t__ SPLIT_NONE ;
 int mlog_errno (int) ;
 int ocfs2_complete_edge_insert (TYPE_1__*,struct ocfs2_path*,struct ocfs2_path*,int) ;
 int ocfs2_extend_trans (TYPE_1__*,int) ;
 int ocfs2_find_subtree_root (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ;
 int ocfs2_insert_at_leaf (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,int ,struct ocfs2_insert_type*) ;
 int ocfs2_journal_access_path (int ,TYPE_1__*,struct ocfs2_path*) ;
 int ocfs2_journal_dirty (TYPE_1__*,struct buffer_head*) ;
 int ocfs2_split_record (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,struct ocfs2_extent_rec*,scalar_t__) ;
 struct buffer_head* path_leaf_bh (struct ocfs2_path*) ;
 int path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_insert_path(handle_t *handle,
        struct ocfs2_extent_tree *et,
        struct ocfs2_path *left_path,
        struct ocfs2_path *right_path,
        struct ocfs2_extent_rec *insert_rec,
        struct ocfs2_insert_type *insert)
{
 int ret, subtree_index;
 struct buffer_head *leaf_bh = path_leaf_bh(right_path);

 if (left_path) {
  int credits = handle->h_buffer_credits;







  credits += left_path->p_tree_depth;

  ret = ocfs2_extend_trans(handle, credits);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_journal_access_path(et->et_ci, handle, left_path);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }





 ret = ocfs2_journal_access_path(et->et_ci, handle, right_path);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 if (insert->ins_split != SPLIT_NONE) {





  ocfs2_split_record(et, left_path, right_path,
       insert_rec, insert->ins_split);






  if (left_path)
   ret = ocfs2_journal_dirty(handle,
        path_leaf_bh(left_path));
   if (ret)
    mlog_errno(ret);
 } else
  ocfs2_insert_at_leaf(et, insert_rec, path_leaf_el(right_path),
         insert);

 ret = ocfs2_journal_dirty(handle, leaf_bh);
 if (ret)
  mlog_errno(ret);

 if (left_path) {






  subtree_index = ocfs2_find_subtree_root(et, left_path,
       right_path);
  ocfs2_complete_edge_insert(handle, left_path, right_path,
        subtree_index);
 }

 ret = 0;
out:
 return ret;
}
