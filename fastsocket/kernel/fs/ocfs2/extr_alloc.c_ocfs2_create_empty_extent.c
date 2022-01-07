
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; scalar_t__ l_count; int * l_recs; } ;


 int BUG_ON (int) ;
 int le16_add_cpu (scalar_t__*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int memset (int *,int ,int) ;
 int mlog_bug_on_msg (int,char*,int,int) ;
 scalar_t__ ocfs2_is_empty_extent (int *) ;
 int ocfs2_shift_records_right (struct ocfs2_extent_list*) ;

__attribute__((used)) static void ocfs2_create_empty_extent(struct ocfs2_extent_list *el)
{
 int next_free = le16_to_cpu(el->l_next_free_rec);

 BUG_ON(le16_to_cpu(el->l_tree_depth) != 0);

 if (next_free == 0)
  goto set_and_inc;

 if (ocfs2_is_empty_extent(&el->l_recs[0]))
  return;

 mlog_bug_on_msg(el->l_count == el->l_next_free_rec,
   "Asked to create an empty extent in a full list:\n"
   "count = %u, tree depth = %u",
   le16_to_cpu(el->l_count),
   le16_to_cpu(el->l_tree_depth));

 ocfs2_shift_records_right(el);

set_and_inc:
 le16_add_cpu(&el->l_next_free_rec, 1);
 memset(&el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));
}
