
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_refcount_rec {void* r_clusters; int r_cpos; scalar_t__ r_refcount; } ;
struct TYPE_2__ {int rl_used; struct ocfs2_refcount_rec* rl_recs; } ;
struct ocfs2_refcount_block {TYPE_1__ rf_records; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 void* cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (scalar_t__) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (void*) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static void ocfs2_find_refcount_rec_in_rl(struct ocfs2_caching_info *ci,
       struct buffer_head *ref_leaf_bh,
       u64 cpos, unsigned int len,
       struct ocfs2_refcount_rec *ret_rec,
       int *index)
{
 int i = 0;
 struct ocfs2_refcount_block *rb =
  (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
 struct ocfs2_refcount_rec *rec = ((void*)0);

 for (; i < le16_to_cpu(rb->rf_records.rl_used); i++) {
  rec = &rb->rf_records.rl_recs[i];

  if (le64_to_cpu(rec->r_cpos) +
      le32_to_cpu(rec->r_clusters) <= cpos)
   continue;
  else if (le64_to_cpu(rec->r_cpos) > cpos)
   break;


  if (ret_rec)
   *ret_rec = *rec;
  goto out;
 }

 if (ret_rec) {

  ret_rec->r_cpos = cpu_to_le64(cpos);
  ret_rec->r_refcount = 0;
  if (i < le16_to_cpu(rb->rf_records.rl_used) &&
      le64_to_cpu(rec->r_cpos) < cpos + len)
   ret_rec->r_clusters =
    cpu_to_le32(le64_to_cpu(rec->r_cpos) - cpos);
  else
   ret_rec->r_clusters = cpu_to_le32(len);
 }

out:
 *index = i;
}
