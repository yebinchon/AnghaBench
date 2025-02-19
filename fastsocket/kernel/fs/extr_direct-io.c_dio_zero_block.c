
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dio_submit {int start_zero_done; int blkfactor; unsigned int block_in_file; unsigned int blkbits; unsigned int next_block_for_io; } ;
struct dio {int dummy; } ;
struct buffer_head {int dummy; } ;


 struct page* ZERO_PAGE (int ) ;
 int buffer_new (struct buffer_head*) ;
 scalar_t__ submit_page_section (struct dio*,struct dio_submit*,struct page*,int ,unsigned int,unsigned int,struct buffer_head*) ;

__attribute__((used)) static inline void dio_zero_block(struct dio *dio, struct dio_submit *sdio,
  int end, struct buffer_head *map_bh)
{
 unsigned dio_blocks_per_fs_block;
 unsigned this_chunk_blocks;
 unsigned this_chunk_bytes;
 struct page *page;

 sdio->start_zero_done = 1;
 if (!sdio->blkfactor || !buffer_new(map_bh))
  return;

 dio_blocks_per_fs_block = 1 << sdio->blkfactor;
 this_chunk_blocks = sdio->block_in_file & (dio_blocks_per_fs_block - 1);

 if (!this_chunk_blocks)
  return;





 if (end)
  this_chunk_blocks = dio_blocks_per_fs_block - this_chunk_blocks;

 this_chunk_bytes = this_chunk_blocks << sdio->blkbits;

 page = ZERO_PAGE(0);
 if (submit_page_section(dio, sdio, page, 0, this_chunk_bytes,
    sdio->next_block_for_io, map_bh))
  return;

 sdio->next_block_for_io += this_chunk_blocks;
}
