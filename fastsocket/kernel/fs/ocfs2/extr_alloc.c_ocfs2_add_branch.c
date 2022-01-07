
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_extent_tree {struct buffer_head* et_root_bh; int et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_list {void* l_next_free_rec; TYPE_1__* l_recs; void* l_tree_depth; } ;
struct ocfs2_extent_block {void* h_next_leaf_blk; int h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {void* e_int_clusters; void* e_cpos; void* e_blkno; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OCFS2_IS_VALID_EXTENT_BLOCK (struct ocfs2_extent_block*) ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (scalar_t__) ;
 void* cpu_to_le64 (scalar_t__) ;
 int get_bh (struct buffer_head*) ;
 struct buffer_head** kcalloc (int,int,int ) ;
 int kfree (struct buffer_head**) ;
 int le16_add_cpu (void**,int) ;
 int le16_to_cpu (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,scalar_t__,scalar_t__) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_adjust_rightmost_branch (int *,struct ocfs2_extent_tree*) ;
 int ocfs2_create_new_meta_bhs (int *,struct ocfs2_extent_tree*,int,struct ocfs2_alloc_context*,struct buffer_head**) ;
 int ocfs2_et_root_journal_access (int *,struct ocfs2_extent_tree*,int ) ;
 int ocfs2_et_set_last_eb_blk (struct ocfs2_extent_tree*,scalar_t__) ;
 int ocfs2_journal_access_eb (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 scalar_t__ ocfs2_sum_rightmost_rec (struct ocfs2_extent_list*) ;

__attribute__((used)) static int ocfs2_add_branch(handle_t *handle,
       struct ocfs2_extent_tree *et,
       struct buffer_head *eb_bh,
       struct buffer_head **last_eb_bh,
       struct ocfs2_alloc_context *meta_ac)
{
 int status, new_blocks, i;
 u64 next_blkno, new_last_eb_blk;
 struct buffer_head *bh;
 struct buffer_head **new_eb_bhs = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_list *eb_el;
 struct ocfs2_extent_list *el;
 u32 new_cpos, root_end;

 mlog_entry_void();

 BUG_ON(!last_eb_bh || !*last_eb_bh);

 if (eb_bh) {
  eb = (struct ocfs2_extent_block *) eb_bh->b_data;
  el = &eb->h_list;
 } else
  el = et->et_root_el;


 BUG_ON(!el->l_tree_depth);

 new_blocks = le16_to_cpu(el->l_tree_depth);

 eb = (struct ocfs2_extent_block *)(*last_eb_bh)->b_data;
 new_cpos = ocfs2_sum_rightmost_rec(&eb->h_list);
 root_end = ocfs2_sum_rightmost_rec(et->et_root_el);
 if (root_end > new_cpos) {
  mlog(0, "adjust the cluster end from %u to %u\n",
       root_end, new_cpos);
  status = ocfs2_adjust_rightmost_branch(handle, et);
  if (status) {
   mlog_errno(status);
   goto bail;
  }
 }


 new_eb_bhs = kcalloc(new_blocks, sizeof(struct buffer_head *),
        GFP_KERNEL);
 if (!new_eb_bhs) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_create_new_meta_bhs(handle, et, new_blocks,
        meta_ac, new_eb_bhs);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 next_blkno = new_last_eb_blk = 0;
 for(i = 0; i < new_blocks; i++) {
  bh = new_eb_bhs[i];
  eb = (struct ocfs2_extent_block *) bh->b_data;

  BUG_ON(!OCFS2_IS_VALID_EXTENT_BLOCK(eb));
  eb_el = &eb->h_list;

  status = ocfs2_journal_access_eb(handle, et->et_ci, bh,
       OCFS2_JOURNAL_ACCESS_CREATE);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  eb->h_next_leaf_blk = 0;
  eb_el->l_tree_depth = cpu_to_le16(i);
  eb_el->l_next_free_rec = cpu_to_le16(1);




  eb_el->l_recs[0].e_cpos = cpu_to_le32(new_cpos);
  eb_el->l_recs[0].e_blkno = cpu_to_le64(next_blkno);





  eb_el->l_recs[0].e_int_clusters = cpu_to_le32(0);
  if (!eb_el->l_tree_depth)
   new_last_eb_blk = le64_to_cpu(eb->h_blkno);

  status = ocfs2_journal_dirty(handle, bh);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  next_blkno = le64_to_cpu(eb->h_blkno);
 }







 status = ocfs2_journal_access_eb(handle, et->et_ci, *last_eb_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 status = ocfs2_et_root_journal_access(handle, et,
           OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 if (eb_bh) {
  status = ocfs2_journal_access_eb(handle, et->et_ci, eb_bh,
       OCFS2_JOURNAL_ACCESS_WRITE);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }



 i = le16_to_cpu(el->l_next_free_rec);
 el->l_recs[i].e_blkno = cpu_to_le64(next_blkno);
 el->l_recs[i].e_cpos = cpu_to_le32(new_cpos);
 el->l_recs[i].e_int_clusters = 0;
 le16_add_cpu(&el->l_next_free_rec, 1);



 ocfs2_et_set_last_eb_blk(et, new_last_eb_blk);

 eb = (struct ocfs2_extent_block *) (*last_eb_bh)->b_data;
 eb->h_next_leaf_blk = cpu_to_le64(new_last_eb_blk);

 status = ocfs2_journal_dirty(handle, *last_eb_bh);
 if (status < 0)
  mlog_errno(status);
 status = ocfs2_journal_dirty(handle, et->et_root_bh);
 if (status < 0)
  mlog_errno(status);
 if (eb_bh) {
  status = ocfs2_journal_dirty(handle, eb_bh);
  if (status < 0)
   mlog_errno(status);
 }





 brelse(*last_eb_bh);
 get_bh(new_eb_bhs[0]);
 *last_eb_bh = new_eb_bhs[0];

 status = 0;
bail:
 if (new_eb_bhs) {
  for (i = 0; i < new_blocks; i++)
   brelse(new_eb_bhs[i]);
  kfree(new_eb_bhs);
 }

 mlog_exit(status);
 return status;
}
