
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
typedef int sector_t ;


 int ocfs2_remove_block_from_cache (struct ocfs2_caching_info*,int ) ;

void ocfs2_remove_from_cache(struct ocfs2_caching_info *ci,
        struct buffer_head *bh)
{
 sector_t block = bh->b_blocknr;

 ocfs2_remove_block_from_cache(ci, block);
}
