
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_list {int l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int get_bh (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void find_leaf_ins(void *data, struct buffer_head *bh)
{
 struct ocfs2_extent_block *eb =(struct ocfs2_extent_block *)bh->b_data;
 struct ocfs2_extent_list *el = &eb->h_list;
 struct buffer_head **ret = data;


 if (le16_to_cpu(el->l_tree_depth) == 0) {
  get_bh(bh);
  *ret = bh;
 }
}
