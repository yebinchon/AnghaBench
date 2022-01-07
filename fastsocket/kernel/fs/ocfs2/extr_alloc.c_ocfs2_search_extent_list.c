
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_extent_rec {int e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;

int ocfs2_search_extent_list(struct ocfs2_extent_list *el, u32 v_cluster)
{
 int ret = -1;
 int i;
 struct ocfs2_extent_rec *rec;
 u32 rec_end, rec_start, clusters;

 for(i = 0; i < le16_to_cpu(el->l_next_free_rec); i++) {
  rec = &el->l_recs[i];

  rec_start = le32_to_cpu(rec->e_cpos);
  clusters = ocfs2_rec_clusters(el, rec);

  rec_end = rec_start + clusters;

  if (v_cluster >= rec_start && v_cluster < rec_end) {
   ret = i;
   break;
  }
 }

 return ret;
}
