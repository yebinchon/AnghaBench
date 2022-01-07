
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_refcount_rec {void* r_refcount; int r_cpos; void* r_clusters; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int brelse (struct buffer_head*) ;
 void* cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (scalar_t__) ;
 int le32_add_cpu (void**,int) ;
 int le32_to_cpu (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int mlog (int ,char*,unsigned long long,unsigned int,...) ;
 int mlog_errno (int) ;
 int ocfs2_change_refcount_rec (int *,struct ocfs2_caching_info*,struct buffer_head*,int,int,int) ;
 int ocfs2_get_refcount_rec (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ;
 int ocfs2_insert_refcount_rec (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*,int,int,struct ocfs2_alloc_context*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_split_refcount_rec (int *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*,int,int,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ;

__attribute__((used)) static int __ocfs2_increase_refcount(handle_t *handle,
         struct ocfs2_caching_info *ci,
         struct buffer_head *ref_root_bh,
         u64 cpos, u32 len, int merge,
         struct ocfs2_alloc_context *meta_ac,
         struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret = 0, index;
 struct buffer_head *ref_leaf_bh = ((void*)0);
 struct ocfs2_refcount_rec rec;
 unsigned int set_len = 0;

 mlog(0, "Tree owner %llu, add refcount start %llu, len %u\n",
      (unsigned long long)ocfs2_metadata_cache_owner(ci),
      (unsigned long long)cpos, len);

 while (len) {
  ret = ocfs2_get_refcount_rec(ci, ref_root_bh,
          cpos, len, &rec, &index,
          &ref_leaf_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  set_len = le32_to_cpu(rec.r_clusters);
  if (rec.r_refcount && le64_to_cpu(rec.r_cpos) == cpos &&
      set_len <= len) {
   mlog(0, "increase refcount rec, start %llu, len %u, "
        "count %u\n", (unsigned long long)cpos, set_len,
        le32_to_cpu(rec.r_refcount));
   ret = ocfs2_change_refcount_rec(handle, ci,
       ref_leaf_bh, index,
       merge, 1);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }
  } else if (!rec.r_refcount) {
   rec.r_refcount = cpu_to_le32(1);

   mlog(0, "insert refcount rec, start %llu, len %u\n",
        (unsigned long long)le64_to_cpu(rec.r_cpos),
        set_len);
   ret = ocfs2_insert_refcount_rec(handle, ci, ref_root_bh,
       ref_leaf_bh,
       &rec, index,
       merge, meta_ac);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }
  } else {
   set_len = min((u64)(cpos + len),
          le64_to_cpu(rec.r_cpos) + set_len) - cpos;
   rec.r_cpos = cpu_to_le64(cpos);
   rec.r_clusters = cpu_to_le32(set_len);
   le32_add_cpu(&rec.r_refcount, 1);

   mlog(0, "split refcount rec, start %llu, "
        "len %u, count %u\n",
        (unsigned long long)le64_to_cpu(rec.r_cpos),
        set_len, le32_to_cpu(rec.r_refcount));
   ret = ocfs2_split_refcount_rec(handle, ci,
             ref_root_bh, ref_leaf_bh,
             &rec, index, merge,
             meta_ac, dealloc);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }
  }

  cpos += set_len;
  len -= set_len;
  brelse(ref_leaf_bh);
  ref_leaf_bh = ((void*)0);
 }

out:
 brelse(ref_leaf_bh);
 return ret;
}
