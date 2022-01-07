
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_rec {int e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_rotate_requires_path_adjustment(struct ocfs2_path *left_path,
       u32 insert_cpos)
{
 struct ocfs2_extent_list *left_el;
 struct ocfs2_extent_rec *rec;
 int next_free;

 left_el = path_leaf_el(left_path);
 next_free = le16_to_cpu(left_el->l_next_free_rec);
 rec = &left_el->l_recs[next_free - 1];

 if (insert_cpos > le32_to_cpu(rec->e_cpos))
  return 1;
 return 0;
}
