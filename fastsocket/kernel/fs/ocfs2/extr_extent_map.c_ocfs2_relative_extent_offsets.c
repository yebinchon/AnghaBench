
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; int e_blkno; int e_cpos; } ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 scalar_t__ ocfs2_blocks_to_clusters (struct super_block*,int ) ;

__attribute__((used)) static void ocfs2_relative_extent_offsets(struct super_block *sb,
       u32 v_cluster,
       struct ocfs2_extent_rec *rec,
       u32 *p_cluster, u32 *num_clusters)

{
 u32 coff = v_cluster - le32_to_cpu(rec->e_cpos);

 *p_cluster = ocfs2_blocks_to_clusters(sb, le64_to_cpu(rec->e_blkno));
 *p_cluster = *p_cluster + coff;

 if (num_clusters)
  *num_clusters = le16_to_cpu(rec->e_leaf_clusters) - coff;
}
