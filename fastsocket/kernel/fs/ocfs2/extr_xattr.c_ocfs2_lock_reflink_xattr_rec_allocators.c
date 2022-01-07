
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocfs2_value_tree_metas {int credits; int num_recs; scalar_t__ num_metas; } ;
struct ocfs2_super {int sb; } ;
struct ocfs2_reflink_xattr_tree_args {TYPE_2__* reflink; } ;
struct TYPE_7__ {int l_next_free_rec; int l_tree_depth; } ;
struct ocfs2_refcount_block {TYPE_3__ rf_list; int rf_flags; } ;
struct ocfs2_extent_tree {int et_root_el; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef int metas ;
struct TYPE_8__ {int i_sb; } ;
struct TYPE_6__ {TYPE_1__* ref_root_bh; TYPE_4__* old_inode; } ;
struct TYPE_5__ {scalar_t__ b_data; } ;


 int OCFS2_EXPAND_REFCOUNT_TREE_CREDITS ;
 int OCFS2_REFCOUNT_TREE_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct ocfs2_value_tree_metas*,int ,int) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_calc_extend_credits (int ,int ,int) ;
 int ocfs2_calc_value_tree_metas ;
 scalar_t__ ocfs2_extend_meta_needed (int ) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_iterate_xattr_buckets (TYPE_4__*,int ,int,int ,struct ocfs2_value_tree_metas*) ;
 int ocfs2_num_free_extents (struct ocfs2_super*,struct ocfs2_extent_tree*) ;
 int ocfs2_refcount_recs_per_rb (int ) ;
 int ocfs2_reserve_clusters (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,scalar_t__,struct ocfs2_alloc_context**) ;

__attribute__((used)) static int ocfs2_lock_reflink_xattr_rec_allocators(
    struct ocfs2_reflink_xattr_tree_args *args,
    struct ocfs2_extent_tree *xt_et,
    u64 blkno, u32 len, int *credits,
    struct ocfs2_alloc_context **meta_ac,
    struct ocfs2_alloc_context **data_ac)
{
 int ret, num_free_extents;
 struct ocfs2_value_tree_metas metas;
 struct ocfs2_super *osb = OCFS2_SB(args->reflink->old_inode->i_sb);
 struct ocfs2_refcount_block *rb;

 memset(&metas, 0, sizeof(metas));

 ret = ocfs2_iterate_xattr_buckets(args->reflink->old_inode, blkno, len,
       ocfs2_calc_value_tree_metas, &metas);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 *credits = metas.credits;
 rb = (struct ocfs2_refcount_block *)args->reflink->ref_root_bh->b_data;
 metas.num_recs =
  (metas.num_recs + ocfs2_refcount_recs_per_rb(osb->sb) - 1) /
   ocfs2_refcount_recs_per_rb(osb->sb) * 2;
 metas.num_metas += metas.num_recs;
 *credits += metas.num_recs +
      metas.num_recs * OCFS2_EXPAND_REFCOUNT_TREE_CREDITS;
 if (le32_to_cpu(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL)
  *credits += le16_to_cpu(rb->rf_list.l_tree_depth) *
       le16_to_cpu(rb->rf_list.l_next_free_rec) + 1;
 else
  *credits += 1;


 num_free_extents = ocfs2_num_free_extents(osb, xt_et);
 if (num_free_extents < 0) {
  ret = num_free_extents;
  mlog_errno(ret);
  goto out;
 }

 if (num_free_extents < len)
  metas.num_metas += ocfs2_extend_meta_needed(xt_et->et_root_el);

 *credits += ocfs2_calc_extend_credits(osb->sb,
           xt_et->et_root_el, len);

 if (metas.num_metas) {
  ret = ocfs2_reserve_new_metadata_blocks(osb, metas.num_metas,
       meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (len) {
  ret = ocfs2_reserve_clusters(osb, len, data_ac);
  if (ret)
   mlog_errno(ret);
 }
out:
 if (ret) {
  if (*meta_ac) {
   ocfs2_free_alloc_context(*meta_ac);
   meta_ac = ((void*)0);
  }
 }

 return ret;
}
