
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_list {int * l_recs; int l_next_free_rec; } ;
struct TYPE_3__ {int l_tree_depth; } ;
struct TYPE_4__ {TYPE_1__ i_list; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;


 int BUG_ON (int) ;
 scalar_t__ OCFS2_TRUNCATE_LOG_UPDATE ;
 int le16_to_cpu (int ) ;
 scalar_t__ ocfs2_quota_trans_credits (struct super_block*) ;
 unsigned int ocfs2_rec_clusters (struct ocfs2_extent_list*,int *) ;

__attribute__((used)) static inline int ocfs2_calc_tree_trunc_credits(struct super_block *sb,
      unsigned int clusters_to_del,
      struct ocfs2_dinode *fe,
      struct ocfs2_extent_list *last_el)
{

 u16 next_free = le16_to_cpu(last_el->l_next_free_rec);
 u16 tree_depth = le16_to_cpu(fe->id2.i_list.l_tree_depth);
 int credits = 1 + tree_depth + 1;
 int i;

 i = next_free - 1;
 BUG_ON(i < 0);



 if (tree_depth && next_free == 1 &&
     ocfs2_rec_clusters(last_el, &last_el->l_recs[i]) == clusters_to_del)
  credits += 1 + tree_depth;


 credits += OCFS2_TRUNCATE_LOG_UPDATE;

 credits += ocfs2_quota_trans_credits(sb);

 return credits;
}
