
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;


 int ocfs2_extend_meta_needed (struct ocfs2_extent_list*) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,int ,struct ocfs2_alloc_context**) ;

int ocfs2_reserve_new_metadata(struct ocfs2_super *osb,
          struct ocfs2_extent_list *root_el,
          struct ocfs2_alloc_context **ac)
{
 return ocfs2_reserve_new_metadata_blocks(osb,
     ocfs2_extend_meta_needed(root_el),
     ac);
}
