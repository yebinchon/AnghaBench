
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; int e_blkno; } ;


 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ ocfs2_clusters_to_blocks (struct super_block*,int ) ;

__attribute__((used)) static int ocfs2_block_extent_contig(struct super_block *sb,
         struct ocfs2_extent_rec *ext,
         u64 blkno)
{
 u64 blk_end = le64_to_cpu(ext->e_blkno);

 blk_end += ocfs2_clusters_to_blocks(sb,
        le16_to_cpu(ext->e_leaf_clusters));

 return blkno == blk_end;
}
