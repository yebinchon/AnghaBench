
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
typedef int sector_t ;


 unsigned int ocfs2_clusters_to_blocks (struct super_block*,int) ;
 struct super_block* ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int ocfs2_remove_block_from_cache (struct ocfs2_caching_info*,int ) ;

void ocfs2_remove_xattr_clusters_from_cache(struct ocfs2_caching_info *ci,
         sector_t block,
         u32 c_len)
{
 struct super_block *sb = ocfs2_metadata_cache_get_super(ci);
 unsigned int i, b_len = ocfs2_clusters_to_blocks(sb, 1) * c_len;

 for (i = 0; i < b_len; i++, block++)
  ocfs2_remove_block_from_cache(ci, block);
}
