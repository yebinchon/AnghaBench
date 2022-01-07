
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;
struct buffer_head {int b_blocknr; } ;
typedef int handle_t ;
struct TYPE_2__ {struct buffer_head* bh; struct ocfs2_extent_list* el; } ;


 int le16_to_cpu (int ) ;
 int mlog (int ,char*,int) ;
 int mlog_errno (int) ;
 int ocfs2_adjust_adjacent_records (struct ocfs2_extent_rec*,struct ocfs2_extent_list*,struct ocfs2_extent_rec*,struct ocfs2_extent_list*) ;
 int ocfs2_adjust_root_records (struct ocfs2_extent_list*,struct ocfs2_extent_list*,struct ocfs2_extent_list*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static void ocfs2_complete_edge_insert(handle_t *handle,
           struct ocfs2_path *left_path,
           struct ocfs2_path *right_path,
           int subtree_index)
{
 int ret, i, idx;
 struct ocfs2_extent_list *el, *left_el, *right_el;
 struct ocfs2_extent_rec *left_rec, *right_rec;
 struct buffer_head *root_bh = left_path->p_node[subtree_index].bh;
 left_el = path_leaf_el(left_path);
 right_el = path_leaf_el(right_path);
 for(i = left_path->p_tree_depth - 1; i > subtree_index; i--) {
  mlog(0, "Adjust records at index %u\n", i);







  el = left_path->p_node[i].el;
  idx = le16_to_cpu(left_el->l_next_free_rec) - 1;
  left_rec = &el->l_recs[idx];

  el = right_path->p_node[i].el;
  right_rec = &el->l_recs[0];

  ocfs2_adjust_adjacent_records(left_rec, left_el, right_rec,
           right_el);

  ret = ocfs2_journal_dirty(handle, left_path->p_node[i].bh);
  if (ret)
   mlog_errno(ret);

  ret = ocfs2_journal_dirty(handle, right_path->p_node[i].bh);
  if (ret)
   mlog_errno(ret);





  left_el = left_path->p_node[i].el;
  right_el = right_path->p_node[i].el;
 }






 el = left_path->p_node[subtree_index].el;
 left_el = left_path->p_node[subtree_index + 1].el;
 right_el = right_path->p_node[subtree_index + 1].el;

 ocfs2_adjust_root_records(el, left_el, right_el,
      left_path->p_node[subtree_index + 1].bh->b_blocknr);

 root_bh = left_path->p_node[subtree_index].bh;

 ret = ocfs2_journal_dirty(handle, root_bh);
 if (ret)
  mlog_errno(ret);
}
