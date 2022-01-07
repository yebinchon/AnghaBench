
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 scalar_t__ ocfs2_clusters_to_blocks (struct super_block*,int) ;
 int ocfs2_mknod_credits (struct super_block*,int ,int ) ;
 int ocfs2_quota_trans_credits (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_calc_symlink_credits(struct super_block *sb)
{
 int blocks = ocfs2_mknod_credits(sb, 0, 0);



 blocks += ocfs2_clusters_to_blocks(sb, 1);

 return blocks + ocfs2_quota_trans_credits(sb);
}
