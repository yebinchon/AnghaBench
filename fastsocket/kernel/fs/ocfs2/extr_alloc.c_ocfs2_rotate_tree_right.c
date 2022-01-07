
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int p_tree_depth; TYPE_2__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct TYPE_10__ {int h_buffer_credits; } ;
typedef TYPE_3__ handle_t ;
typedef enum ocfs2_split_type { ____Placeholder_ocfs2_split_type } ocfs2_split_type ;
struct TYPE_11__ {scalar_t__ b_blocknr; } ;
struct TYPE_9__ {TYPE_1__* bh; } ;
struct TYPE_8__ {scalar_t__ b_blocknr; } ;


 int ENOMEM ;
 int SPLIT_NONE ;
 int mlog (int ,char*,int,unsigned long long,...) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,scalar_t__,scalar_t__,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_extend_rotate_transaction (TYPE_3__*,int,int,struct ocfs2_path*) ;
 int ocfs2_find_cpos_for_left_leaf (struct super_block*,struct ocfs2_path*,scalar_t__*) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,scalar_t__) ;
 int ocfs2_find_subtree_root (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 scalar_t__ ocfs2_leftmost_rec_contains (int ,scalar_t__) ;
 struct super_block* ocfs2_metadata_cache_get_super (int ) ;
 scalar_t__ ocfs2_metadata_cache_owner (int ) ;
 int ocfs2_mv_path (struct ocfs2_path*,struct ocfs2_path*) ;
 struct ocfs2_path* ocfs2_new_path_from_path (struct ocfs2_path*) ;
 scalar_t__ ocfs2_rotate_requires_path_adjustment (struct ocfs2_path*,scalar_t__) ;
 int ocfs2_rotate_subtree_right (TYPE_3__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int) ;
 TYPE_4__* path_leaf_bh (struct ocfs2_path*) ;
 int path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_rotate_tree_right(handle_t *handle,
       struct ocfs2_extent_tree *et,
       enum ocfs2_split_type split,
       u32 insert_cpos,
       struct ocfs2_path *right_path,
       struct ocfs2_path **ret_left_path)
{
 int ret, start, orig_credits = handle->h_buffer_credits;
 u32 cpos;
 struct ocfs2_path *left_path = ((void*)0);
 struct super_block *sb = ocfs2_metadata_cache_get_super(et->et_ci);

 *ret_left_path = ((void*)0);

 left_path = ocfs2_new_path_from_path(right_path);
 if (!left_path) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_cpos_for_left_leaf(sb, right_path, &cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 mlog(0, "Insert: %u, first left path cpos: %u\n", insert_cpos, cpos);
 while (cpos && insert_cpos <= cpos) {
  mlog(0, "Rotating a tree: ins. cpos: %u, left path cpos: %u\n",
       insert_cpos, cpos);

  ret = ocfs2_find_path(et->et_ci, left_path, cpos);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  mlog_bug_on_msg(path_leaf_bh(left_path) ==
    path_leaf_bh(right_path),
    "Owner %llu: error during insert of %u "
    "(left path cpos %u) results in two identical "
    "paths ending at %llu\n",
    (unsigned long long)ocfs2_metadata_cache_owner(et->et_ci),
    insert_cpos, cpos,
    (unsigned long long)
    path_leaf_bh(left_path)->b_blocknr);

  if (split == SPLIT_NONE &&
      ocfs2_rotate_requires_path_adjustment(left_path,
         insert_cpos)) {
   *ret_left_path = left_path;
   goto out_ret_path;
  }

  start = ocfs2_find_subtree_root(et, left_path, right_path);

  mlog(0, "Subtree root at index %d (blk %llu, depth %d)\n",
       start,
       (unsigned long long) right_path->p_node[start].bh->b_blocknr,
       right_path->p_tree_depth);

  ret = ocfs2_extend_rotate_transaction(handle, start,
            orig_credits, right_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_rotate_subtree_right(handle, et, left_path,
       right_path, start);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  if (split != SPLIT_NONE &&
      ocfs2_leftmost_rec_contains(path_leaf_el(right_path),
      insert_cpos)) {
   *ret_left_path = left_path;
   goto out_ret_path;
  }






  ocfs2_mv_path(right_path, left_path);

  ret = ocfs2_find_cpos_for_left_leaf(sb, right_path, &cpos);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

out:
 ocfs2_free_path(left_path);

out_ret_path:
 return ret;
}
