
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int e_flags; int e_blkno; int e_leaf_clusters; int e_cpos; } ;


 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le64_add_cpu (int *,int ) ;
 int memset (struct ocfs2_extent_rec*,int ,int) ;
 int ocfs2_clusters_to_blocks (struct super_block*,scalar_t__) ;

__attribute__((used)) static void ocfs2_make_right_split_rec(struct super_block *sb,
           struct ocfs2_extent_rec *split_rec,
           u32 cpos,
           struct ocfs2_extent_rec *rec)
{
 u32 rec_cpos = le32_to_cpu(rec->e_cpos);
 u32 rec_range = rec_cpos + le16_to_cpu(rec->e_leaf_clusters);

 memset(split_rec, 0, sizeof(struct ocfs2_extent_rec));

 split_rec->e_cpos = cpu_to_le32(cpos);
 split_rec->e_leaf_clusters = cpu_to_le16(rec_range - cpos);

 split_rec->e_blkno = rec->e_blkno;
 le64_add_cpu(&split_rec->e_blkno,
       ocfs2_clusters_to_blocks(sb, cpos - rec_cpos));

 split_rec->e_flags = rec->e_flags;
}
