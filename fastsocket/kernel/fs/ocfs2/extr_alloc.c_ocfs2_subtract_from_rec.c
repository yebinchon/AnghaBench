
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; int e_blkno; int e_cpos; } ;
typedef enum ocfs2_split_type { ____Placeholder_ocfs2_split_type } ocfs2_split_type ;


 int SPLIT_LEFT ;
 int le16_add_cpu (int *,int ) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int ) ;
 int le64_add_cpu (int *,int ) ;
 int ocfs2_clusters_to_blocks (struct super_block*,int ) ;

__attribute__((used)) static void ocfs2_subtract_from_rec(struct super_block *sb,
        enum ocfs2_split_type split,
        struct ocfs2_extent_rec *rec,
        struct ocfs2_extent_rec *split_rec)
{
 u64 len_blocks;

 len_blocks = ocfs2_clusters_to_blocks(sb,
    le16_to_cpu(split_rec->e_leaf_clusters));

 if (split == SPLIT_LEFT) {




  le32_add_cpu(&rec->e_cpos,
        le16_to_cpu(split_rec->e_leaf_clusters));
  le64_add_cpu(&rec->e_blkno, len_blocks);
  le16_add_cpu(&rec->e_leaf_clusters,
        -le16_to_cpu(split_rec->e_leaf_clusters));
 } else {




  le16_add_cpu(&rec->e_leaf_clusters,
        -le16_to_cpu(split_rec->e_leaf_clusters));
 }
}
