
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_refcount_rec {int dummy; } ;
struct ocfs2_refcount_list {void* rl_used; int * rl_recs; void* rl_count; } ;
struct ocfs2_refcount_block {void* rf_cpos; struct ocfs2_refcount_list rf_records; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int cmp_refcount_rec_by_cpos ;
 int cmp_refcount_rec_by_low_cpos ;
 void* cpu_to_le32 (int) ;
 int le16_add_cpu (void**,int) ;
 int le16_to_cpu (void*) ;
 int le32_to_cpu (void*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int mlog (int ,char*,unsigned long long,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_find_refcount_split_pos (struct ocfs2_refcount_list*,int*,int*) ;
 int sort (int **,int,int,int ,int ) ;
 int swap_refcount_rec ;

__attribute__((used)) static int ocfs2_divide_leaf_refcount_block(struct buffer_head *ref_leaf_bh,
         struct buffer_head *new_bh,
         u32 *split_cpos)
{
 int split_index = 0, num_moved, ret;
 u32 cpos = 0;
 struct ocfs2_refcount_block *rb =
   (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
 struct ocfs2_refcount_list *rl = &rb->rf_records;
 struct ocfs2_refcount_block *new_rb =
   (struct ocfs2_refcount_block *)new_bh->b_data;
 struct ocfs2_refcount_list *new_rl = &new_rb->rf_records;

 mlog(0, "split old leaf refcount block %llu, count = %u, used = %u\n",
      (unsigned long long)ref_leaf_bh->b_blocknr,
      le32_to_cpu(rl->rl_count), le32_to_cpu(rl->rl_used));
 sort(&rl->rl_recs, le16_to_cpu(rl->rl_used),
      sizeof(struct ocfs2_refcount_rec),
      cmp_refcount_rec_by_low_cpos, swap_refcount_rec);

 ret = ocfs2_find_refcount_split_pos(rl, &cpos, &split_index);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 new_rb->rf_cpos = cpu_to_le32(cpos);


 num_moved = le16_to_cpu(rl->rl_used) - split_index;
 memcpy(new_rl->rl_recs, &rl->rl_recs[split_index],
        num_moved * sizeof(struct ocfs2_refcount_rec));


 memset(&rl->rl_recs[split_index], 0,
        num_moved * sizeof(struct ocfs2_refcount_rec));


 le16_add_cpu(&rl->rl_used, -num_moved);
 new_rl->rl_used = cpu_to_le32(num_moved);

 sort(&rl->rl_recs, le16_to_cpu(rl->rl_used),
      sizeof(struct ocfs2_refcount_rec),
      cmp_refcount_rec_by_cpos, swap_refcount_rec);

 sort(&new_rl->rl_recs, le16_to_cpu(new_rl->rl_used),
      sizeof(struct ocfs2_refcount_rec),
      cmp_refcount_rec_by_cpos, swap_refcount_rec);

 *split_cpos = cpos;
 return 0;
}
