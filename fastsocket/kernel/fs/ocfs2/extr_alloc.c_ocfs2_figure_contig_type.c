
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_insert_type {int ins_contig_index; int ins_contig; } ;
struct ocfs2_extent_tree {unsigned int et_max_leaf_clusters; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_next_free_rec; int l_tree_depth; } ;
typedef enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;


 int BUG_ON (int) ;
 int CONTIG_NONE ;
 int le16_to_cpu (int ) ;
 int ocfs2_et_extent_contig (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static void ocfs2_figure_contig_type(struct ocfs2_extent_tree *et,
         struct ocfs2_insert_type *insert,
         struct ocfs2_extent_list *el,
         struct ocfs2_extent_rec *insert_rec)
{
 int i;
 enum ocfs2_contig_type contig_type = CONTIG_NONE;

 BUG_ON(le16_to_cpu(el->l_tree_depth) != 0);

 for(i = 0; i < le16_to_cpu(el->l_next_free_rec); i++) {
  contig_type = ocfs2_et_extent_contig(et, &el->l_recs[i],
           insert_rec);
  if (contig_type != CONTIG_NONE) {
   insert->ins_contig_index = i;
   break;
  }
 }
 insert->ins_contig = contig_type;

 if (insert->ins_contig != CONTIG_NONE) {
  struct ocfs2_extent_rec *rec =
    &el->l_recs[insert->ins_contig_index];
  unsigned int len = le16_to_cpu(rec->e_leaf_clusters) +
       le16_to_cpu(insert_rec->e_leaf_clusters);





  if (et->et_max_leaf_clusters &&
      (len > et->et_max_leaf_clusters))
   insert->ins_contig = CONTIG_NONE;
 }
}
