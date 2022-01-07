
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_refcount_rec {scalar_t__ r_cpos; int r_clusters; int r_refcount; } ;
struct ocfs2_refcount_list {int rl_count; struct ocfs2_refcount_rec* rl_recs; int rl_used; } ;
struct ocfs2_refcount_block {int rf_flags; struct ocfs2_refcount_list rf_records; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_REFCOUNT_TREE_FL ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int) ;
 int le64_add_cpu (scalar_t__*,int) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;
 int memcpy (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ;
 int memmove (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ;
 int mlog (int ,char*,unsigned long long,int,int,unsigned long long,...) ;
 int mlog_errno (int) ;
 int ocfs2_expand_refcount_tree (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*) ;
 int ocfs2_get_refcount_rec (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ;
 int ocfs2_journal_access_rb (int *,struct ocfs2_caching_info*,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_refcount_rec_merge (struct ocfs2_refcount_block*,int) ;

__attribute__((used)) static int ocfs2_split_refcount_rec(handle_t *handle,
        struct ocfs2_caching_info *ci,
        struct buffer_head *ref_root_bh,
        struct buffer_head *ref_leaf_bh,
        struct ocfs2_refcount_rec *split_rec,
        int index, int merge,
        struct ocfs2_alloc_context *meta_ac,
        struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret, recs_need;
 u32 len;
 struct ocfs2_refcount_block *rb =
   (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
 struct ocfs2_refcount_list *rf_list = &rb->rf_records;
 struct ocfs2_refcount_rec *orig_rec = &rf_list->rl_recs[index];
 struct ocfs2_refcount_rec *tail_rec = ((void*)0);
 struct buffer_head *new_bh = ((void*)0);

 BUG_ON(le32_to_cpu(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL);

 mlog(0, "original r_pos %llu, cluster %u, split %llu, cluster %u\n",
      le64_to_cpu(orig_rec->r_cpos), le32_to_cpu(orig_rec->r_clusters),
      le64_to_cpu(split_rec->r_cpos),
      le32_to_cpu(split_rec->r_clusters));






 if (!split_rec->r_refcount &&
     (split_rec->r_cpos == orig_rec->r_cpos ||
      le64_to_cpu(split_rec->r_cpos) +
      le32_to_cpu(split_rec->r_clusters) ==
      le64_to_cpu(orig_rec->r_cpos) + le32_to_cpu(orig_rec->r_clusters)))
  recs_need = 0;
 else
  recs_need = 1;





 if (split_rec->r_refcount &&
     (split_rec->r_cpos != orig_rec->r_cpos &&
      le64_to_cpu(split_rec->r_cpos) +
      le32_to_cpu(split_rec->r_clusters) !=
      le64_to_cpu(orig_rec->r_cpos) + le32_to_cpu(orig_rec->r_clusters)))
  recs_need++;


 if (le16_to_cpu(rf_list->rl_used) + recs_need > rf_list->rl_count) {
  struct ocfs2_refcount_rec tmp_rec;
  u64 cpos = le64_to_cpu(orig_rec->r_cpos);
  len = le32_to_cpu(orig_rec->r_clusters);
  ret = ocfs2_expand_refcount_tree(handle, ci, ref_root_bh,
       ref_leaf_bh, meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }





  ret = ocfs2_get_refcount_rec(ci, ref_root_bh,
          cpos, len, &tmp_rec, &index,
          &new_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ref_leaf_bh = new_bh;
  rb = (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
  rf_list = &rb->rf_records;
  orig_rec = &rf_list->rl_recs[index];
 }

 ret = ocfs2_journal_access_rb(handle, ci, ref_leaf_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }






 if (index != le16_to_cpu(rf_list->rl_used) - 1)
  memmove(&rf_list->rl_recs[index + 1 + recs_need],
   &rf_list->rl_recs[index + 1],
   (le16_to_cpu(rf_list->rl_used) - index - 1) *
    sizeof(struct ocfs2_refcount_rec));

 len = (le64_to_cpu(orig_rec->r_cpos) +
       le32_to_cpu(orig_rec->r_clusters)) -
       (le64_to_cpu(split_rec->r_cpos) +
       le32_to_cpu(split_rec->r_clusters));





 if (len) {
  tail_rec = &rf_list->rl_recs[index + recs_need];

  memcpy(tail_rec, orig_rec, sizeof(struct ocfs2_refcount_rec));
  le64_add_cpu(&tail_rec->r_cpos,
        le32_to_cpu(tail_rec->r_clusters) - len);
  tail_rec->r_clusters = le32_to_cpu(len);
 }
 if (split_rec->r_cpos != orig_rec->r_cpos && tail_rec != orig_rec) {
  len = le64_to_cpu(split_rec->r_cpos) -
        le64_to_cpu(orig_rec->r_cpos);
  orig_rec->r_clusters = cpu_to_le32(len);
  index++;
 }

 le16_add_cpu(&rf_list->rl_used, recs_need);

 if (split_rec->r_refcount) {
  rf_list->rl_recs[index] = *split_rec;
  mlog(0, "insert refcount record start %llu, len %u, count %u "
       "to leaf block %llu at index %d\n",
       (unsigned long long)le64_to_cpu(split_rec->r_cpos),
       le32_to_cpu(split_rec->r_clusters),
       le32_to_cpu(split_rec->r_refcount),
       (unsigned long long)ref_leaf_bh->b_blocknr, index);

  if (merge)
   ocfs2_refcount_rec_merge(rb, index);
 }

 ret = ocfs2_journal_dirty(handle, ref_leaf_bh);
 if (ret)
  mlog_errno(ret);

out:
 brelse(new_bh);
 return ret;
}
