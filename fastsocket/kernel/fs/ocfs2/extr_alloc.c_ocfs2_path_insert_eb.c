
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {TYPE_1__* p_node; } ;
struct ocfs2_extent_block {int h_list; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int * el; struct buffer_head* bh; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline void ocfs2_path_insert_eb(struct ocfs2_path *path, int index,
     struct buffer_head *eb_bh)
{
 struct ocfs2_extent_block *eb = (struct ocfs2_extent_block *)eb_bh->b_data;







 BUG_ON(index == 0);

 path->p_node[index].bh = eb_bh;
 path->p_node[index].el = &eb->h_list;
}
