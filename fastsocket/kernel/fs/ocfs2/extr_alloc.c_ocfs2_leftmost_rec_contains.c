
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ocfs2_extent_rec {int e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;


 int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;
 unsigned int ocfs2_rec_clusters (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static int ocfs2_leftmost_rec_contains(struct ocfs2_extent_list *el, u32 cpos)
{
 int next_free = le16_to_cpu(el->l_next_free_rec);
 unsigned int range;
 struct ocfs2_extent_rec *rec;

 if (next_free == 0)
  return 0;

 rec = &el->l_recs[0];
 if (ocfs2_is_empty_extent(rec)) {

  if (next_free == 1)
   return 0;
  rec = &el->l_recs[1];
 }

 range = le32_to_cpu(rec->e_cpos) + ocfs2_rec_clusters(el, rec);
 if (cpos >= le32_to_cpu(rec->e_cpos) && cpos < range)
  return 1;
 return 0;
}
