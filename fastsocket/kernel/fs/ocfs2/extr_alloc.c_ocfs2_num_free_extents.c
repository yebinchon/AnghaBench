
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_tree {int et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; int l_next_free_rec; int l_count; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_et_get_last_eb_blk (struct ocfs2_extent_tree*) ;
 int ocfs2_read_extent_block (int ,scalar_t__,struct buffer_head**) ;

int ocfs2_num_free_extents(struct ocfs2_super *osb,
      struct ocfs2_extent_tree *et)
{
 int retval;
 struct ocfs2_extent_list *el = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct buffer_head *eb_bh = ((void*)0);
 u64 last_eb_blk = 0;

 mlog_entry_void();

 el = et->et_root_el;
 last_eb_blk = ocfs2_et_get_last_eb_blk(et);

 if (last_eb_blk) {
  retval = ocfs2_read_extent_block(et->et_ci, last_eb_blk,
       &eb_bh);
  if (retval < 0) {
   mlog_errno(retval);
   goto bail;
  }
  eb = (struct ocfs2_extent_block *) eb_bh->b_data;
  el = &eb->h_list;
 }

 BUG_ON(el->l_tree_depth != 0);

 retval = le16_to_cpu(el->l_count) - le16_to_cpu(el->l_next_free_rec);
bail:
 brelse(eb_bh);

 mlog_exit(retval);
 return retval;
}
