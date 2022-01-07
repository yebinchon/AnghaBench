
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int sb; } ;
struct ocfs2_dx_root_block {int dr_list; } ;


 scalar_t__ ocfs2_calc_extend_credits (int ,int *,int) ;
 int ocfs2_clusters_to_blocks (int ,int) ;
 scalar_t__ ocfs2_quota_trans_credits (int ) ;

__attribute__((used)) static int ocfs2_dx_dir_rebalance_credits(struct ocfs2_super *osb,
       struct ocfs2_dx_root_block *dx_root)
{
 int credits = ocfs2_clusters_to_blocks(osb->sb, 2);

 credits += ocfs2_calc_extend_credits(osb->sb, &dx_root->dr_list, 1);
 credits += ocfs2_quota_trans_credits(osb->sb);
 return credits;
}
