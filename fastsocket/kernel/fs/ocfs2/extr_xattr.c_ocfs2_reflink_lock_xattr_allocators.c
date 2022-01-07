
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_super {int sb; } ;
struct TYPE_2__ {int l_next_free_rec; int l_tree_depth; } ;
struct ocfs2_refcount_block {TYPE_1__ rf_list; int rf_flags; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int OCFS2_EXPAND_REFCOUNT_TREE_CREDITS ;
 int OCFS2_REFCOUNT_TREE_FL ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_get_xattr_value_root ;
 int ocfs2_refcount_recs_per_rb (int ) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int ocfs2_value_metas_in_xattr_header (int ,int *,struct ocfs2_xattr_header*,int*,int*,int*,int ,int *) ;

__attribute__((used)) static int ocfs2_reflink_lock_xattr_allocators(struct ocfs2_super *osb,
     struct ocfs2_xattr_header *xh,
     struct buffer_head *ref_root_bh,
     int *credits,
     struct ocfs2_alloc_context **meta_ac)
{
 int ret, meta_add = 0, num_recs = 0;
 struct ocfs2_refcount_block *rb =
   (struct ocfs2_refcount_block *)ref_root_bh->b_data;

 *credits = 0;

 ret = ocfs2_value_metas_in_xattr_header(osb->sb, ((void*)0), xh,
      &meta_add, credits, &num_recs,
      ocfs2_get_xattr_value_root,
      ((void*)0));
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 num_recs = num_recs / ocfs2_refcount_recs_per_rb(osb->sb) * 2;
 meta_add += num_recs;
 *credits += num_recs + num_recs * OCFS2_EXPAND_REFCOUNT_TREE_CREDITS;
 if (le32_to_cpu(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL)
  *credits += le16_to_cpu(rb->rf_list.l_tree_depth) *
       le16_to_cpu(rb->rf_list.l_next_free_rec) + 1;
 else
  *credits += 1;

 ret = ocfs2_reserve_new_metadata_blocks(osb, meta_add, meta_ac);
 if (ret)
  mlog_errno(ret);

out:
 return ret;
}
