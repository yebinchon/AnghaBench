
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_tree {struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_list {int l_tree_depth; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int mlog (int ,char*,int) ;
 int mlog_errno (int) ;
 int ocfs2_add_branch (int *,struct ocfs2_extent_tree*,struct buffer_head*,struct buffer_head**,struct ocfs2_alloc_context*) ;
 int ocfs2_find_branch_target (struct ocfs2_extent_tree*,struct buffer_head**) ;
 int ocfs2_shift_tree_depth (int *,struct ocfs2_extent_tree*,struct ocfs2_alloc_context*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_grow_tree(handle_t *handle, struct ocfs2_extent_tree *et,
      int *final_depth, struct buffer_head **last_eb_bh,
      struct ocfs2_alloc_context *meta_ac)
{
 int ret, shift;
 struct ocfs2_extent_list *el = et->et_root_el;
 int depth = le16_to_cpu(el->l_tree_depth);
 struct buffer_head *bh = ((void*)0);

 BUG_ON(meta_ac == ((void*)0));

 shift = ocfs2_find_branch_target(et, &bh);
 if (shift < 0) {
  ret = shift;
  mlog_errno(ret);
  goto out;
 }




 if (shift) {
  BUG_ON(bh);
  mlog(0, "need to shift tree depth (current = %d)\n", depth);




  ret = ocfs2_shift_tree_depth(handle, et, meta_ac, &bh);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
  depth++;
  if (depth == 1) {
   BUG_ON(*last_eb_bh);
   get_bh(bh);
   *last_eb_bh = bh;
   goto out;
  }
 }



 mlog(0, "add branch. bh = %p\n", bh);
 ret = ocfs2_add_branch(handle, et, bh, last_eb_bh,
          meta_ac);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

out:
 if (final_depth)
  *final_depth = depth;
 brelse(bh);
 return ret;
}
