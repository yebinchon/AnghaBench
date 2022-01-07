
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_extent_tree {struct buffer_head* et_root_bh; int et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; scalar_t__ l_next_free_rec; TYPE_1__* l_recs; } ;
struct ocfs2_extent_block {int h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int e_int_clusters; int e_blkno; scalar_t__ e_cpos; } ;


 int BUG_ON (int) ;
 int OCFS2_IS_VALID_EXTENT_BLOCK (struct ocfs2_extent_block*) ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int le16_add_cpu (scalar_t__*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int le64_to_cpu (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_create_new_meta_bhs (int *,struct ocfs2_extent_tree*,int,struct ocfs2_alloc_context*,struct buffer_head**) ;
 int ocfs2_et_root_journal_access (int *,struct ocfs2_extent_tree*,int ) ;
 int ocfs2_et_set_last_eb_blk (struct ocfs2_extent_tree*,int ) ;
 int ocfs2_journal_access_eb (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_sum_rightmost_rec (struct ocfs2_extent_list*) ;

__attribute__((used)) static int ocfs2_shift_tree_depth(handle_t *handle,
      struct ocfs2_extent_tree *et,
      struct ocfs2_alloc_context *meta_ac,
      struct buffer_head **ret_new_eb_bh)
{
 int status, i;
 u32 new_clusters;
 struct buffer_head *new_eb_bh = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_list *root_el;
 struct ocfs2_extent_list *eb_el;

 mlog_entry_void();

 status = ocfs2_create_new_meta_bhs(handle, et, 1, meta_ac,
        &new_eb_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 eb = (struct ocfs2_extent_block *) new_eb_bh->b_data;

 BUG_ON(!OCFS2_IS_VALID_EXTENT_BLOCK(eb));

 eb_el = &eb->h_list;
 root_el = et->et_root_el;

 status = ocfs2_journal_access_eb(handle, et->et_ci, new_eb_bh,
      OCFS2_JOURNAL_ACCESS_CREATE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }


 eb_el->l_tree_depth = root_el->l_tree_depth;
 eb_el->l_next_free_rec = root_el->l_next_free_rec;
 for (i = 0; i < le16_to_cpu(root_el->l_next_free_rec); i++)
  eb_el->l_recs[i] = root_el->l_recs[i];

 status = ocfs2_journal_dirty(handle, new_eb_bh);
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

 new_clusters = ocfs2_sum_rightmost_rec(eb_el);


 le16_add_cpu(&root_el->l_tree_depth, 1);
 root_el->l_recs[0].e_cpos = 0;
 root_el->l_recs[0].e_blkno = eb->h_blkno;
 root_el->l_recs[0].e_int_clusters = cpu_to_le32(new_clusters);
 for (i = 1; i < le16_to_cpu(root_el->l_next_free_rec); i++)
  memset(&root_el->l_recs[i], 0, sizeof(struct ocfs2_extent_rec));
 root_el->l_next_free_rec = cpu_to_le16(1);



 if (root_el->l_tree_depth == cpu_to_le16(1))
  ocfs2_et_set_last_eb_blk(et, le64_to_cpu(eb->h_blkno));

 status = ocfs2_journal_dirty(handle, et->et_root_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 *ret_new_eb_bh = new_eb_bh;
 new_eb_bh = ((void*)0);
 status = 0;
bail:
 brelse(new_eb_bh);

 mlog_exit(status);
 return status;
}
