
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int et_ci; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int mlog_errno (int) ;
 int ocfs2_find_cpos_for_left_leaf (int ,struct ocfs2_path*,scalar_t__*) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,scalar_t__) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 struct ocfs2_path* ocfs2_new_path_from_path (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_get_left_path(struct ocfs2_extent_tree *et,
          struct ocfs2_path *right_path,
          struct ocfs2_path **ret_left_path)
{
 int ret;
 u32 left_cpos;
 struct ocfs2_path *left_path = ((void*)0);

 *ret_left_path = ((void*)0);


 BUG_ON(right_path->p_tree_depth == 0);

 ret = ocfs2_find_cpos_for_left_leaf(ocfs2_metadata_cache_get_super(et->et_ci),
         right_path, &left_cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 BUG_ON(left_cpos == 0);

 left_path = ocfs2_new_path_from_path(right_path);
 if (!left_path) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_path(et->et_ci, left_path, left_cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 *ret_left_path = left_path;
out:
 if (ret)
  ocfs2_free_path(left_path);
 return ret;
}
