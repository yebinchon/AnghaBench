
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_expand_inline_ref_root (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head**,struct ocfs2_alloc_context*) ;
 int ocfs2_new_leaf_refcount_block (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*) ;

__attribute__((used)) static int ocfs2_expand_refcount_tree(handle_t *handle,
          struct ocfs2_caching_info *ci,
          struct buffer_head *ref_root_bh,
          struct buffer_head *ref_leaf_bh,
          struct ocfs2_alloc_context *meta_ac)
{
 int ret;
 struct buffer_head *expand_bh = ((void*)0);

 if (ref_root_bh == ref_leaf_bh) {




  ret = ocfs2_expand_inline_ref_root(handle, ci, ref_root_bh,
         &expand_bh, meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 } else {
  expand_bh = ref_leaf_bh;
  get_bh(expand_bh);
 }



 ret = ocfs2_new_leaf_refcount_block(handle, ci, ref_root_bh,
         expand_bh, meta_ac);
 if (ret)
  mlog_errno(ret);
out:
 brelse(expand_bh);
 return ret;
}
