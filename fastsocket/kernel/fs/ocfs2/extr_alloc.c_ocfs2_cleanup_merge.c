
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_rec {scalar_t__ e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;


 int BUG_ON (int ) ;
 int memmove (struct ocfs2_extent_rec*,struct ocfs2_extent_rec*,unsigned int) ;
 int memset (struct ocfs2_extent_rec*,int ,int) ;
 int ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;

__attribute__((used)) static void ocfs2_cleanup_merge(struct ocfs2_extent_list *el,
    int index)
{
 struct ocfs2_extent_rec *rec = &el->l_recs[index];
 unsigned int size;

 if (rec->e_leaf_clusters == 0) {
  if (index > 0) {
   BUG_ON(ocfs2_is_empty_extent(&el->l_recs[0]));
   size = index * sizeof(struct ocfs2_extent_rec);
   memmove(&el->l_recs[1], &el->l_recs[0], size);
  }






  memset(&el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));
 }
}
