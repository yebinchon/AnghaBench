
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_refcount_rec {int r_refcount; int r_clusters; int r_cpos; } ;
struct ocfs2_refcount_list {scalar_t__ rl_used; scalar_t__ rl_count; struct ocfs2_refcount_rec* rl_recs; } ;
struct ocfs2_refcount_block {struct ocfs2_refcount_list rf_records; int rf_flags; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_REFCOUNT_TREE_FL ;
 int brelse (struct buffer_head*) ;
 int le16_add_cpu (scalar_t__*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memmove (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ;
 int mlog (int ,char*,unsigned long long,int,int,unsigned long long,int) ;
 int mlog_errno (int) ;
 int ocfs2_adjust_refcount_rec (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*) ;
 int ocfs2_expand_refcount_tree (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*) ;
 int ocfs2_get_refcount_rec (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,int,int *,int*,struct buffer_head**) ;
 int ocfs2_journal_access_rb (int *,struct ocfs2_caching_info*,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_refcount_rec_merge (struct ocfs2_refcount_block*,int) ;

__attribute__((used)) static int ocfs2_insert_refcount_rec(handle_t *handle,
         struct ocfs2_caching_info *ci,
         struct buffer_head *ref_root_bh,
         struct buffer_head *ref_leaf_bh,
         struct ocfs2_refcount_rec *rec,
         int index, int merge,
         struct ocfs2_alloc_context *meta_ac)
{
 int ret;
 struct ocfs2_refcount_block *rb =
   (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
 struct ocfs2_refcount_list *rf_list = &rb->rf_records;
 struct buffer_head *new_bh = ((void*)0);

 BUG_ON(le32_to_cpu(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL);

 if (rf_list->rl_used == rf_list->rl_count) {
  u64 cpos = le64_to_cpu(rec->r_cpos);
  u32 len = le32_to_cpu(rec->r_clusters);

  ret = ocfs2_expand_refcount_tree(handle, ci, ref_root_bh,
       ref_leaf_bh, meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_get_refcount_rec(ci, ref_root_bh,
          cpos, len, ((void*)0), &index,
          &new_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ref_leaf_bh = new_bh;
  rb = (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
  rf_list = &rb->rf_records;
 }

 ret = ocfs2_journal_access_rb(handle, ci, ref_leaf_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (index < le16_to_cpu(rf_list->rl_used))
  memmove(&rf_list->rl_recs[index + 1],
   &rf_list->rl_recs[index],
   (le16_to_cpu(rf_list->rl_used) - index) *
    sizeof(struct ocfs2_refcount_rec));

 mlog(0, "insert refcount record start %llu, len %u, count %u "
      "to leaf block %llu at index %d\n",
      (unsigned long long)le64_to_cpu(rec->r_cpos),
      le32_to_cpu(rec->r_clusters), le32_to_cpu(rec->r_refcount),
      (unsigned long long)ref_leaf_bh->b_blocknr, index);

 rf_list->rl_recs[index] = *rec;

 le16_add_cpu(&rf_list->rl_used, 1);

 if (merge)
  ocfs2_refcount_rec_merge(rb, index);

 ret = ocfs2_journal_dirty(handle, ref_leaf_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (index == 0) {
  ret = ocfs2_adjust_refcount_rec(handle, ci,
      ref_root_bh,
      ref_leaf_bh, rec);
  if (ret)
   mlog_errno(ret);
 }
out:
 brelse(new_bh);
 return ret;
}
