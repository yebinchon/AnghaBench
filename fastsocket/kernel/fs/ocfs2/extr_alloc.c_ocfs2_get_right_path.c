
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_count; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int mlog_errno (int) ;
 int ocfs2_find_cpos_for_right_leaf (int ,struct ocfs2_path*,scalar_t__*) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,scalar_t__) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 struct ocfs2_path* ocfs2_new_path_from_path (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_get_right_path(struct ocfs2_extent_tree *et,
    struct ocfs2_path *left_path,
    struct ocfs2_path **ret_right_path)
{
 int ret;
 u32 right_cpos;
 struct ocfs2_path *right_path = ((void*)0);
 struct ocfs2_extent_list *left_el;

 *ret_right_path = ((void*)0);


 BUG_ON(left_path->p_tree_depth == 0);

 left_el = path_leaf_el(left_path);
 BUG_ON(left_el->l_next_free_rec != left_el->l_count);

 ret = ocfs2_find_cpos_for_right_leaf(ocfs2_metadata_cache_get_super(et->et_ci),
          left_path, &right_cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 BUG_ON(right_cpos == 0);

 right_path = ocfs2_new_path_from_path(left_path);
 if (!right_path) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_path(et->et_ci, right_path, right_cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 *ret_right_path = right_path;
out:
 if (ret)
  ocfs2_free_path(right_path);
 return ret;
}
