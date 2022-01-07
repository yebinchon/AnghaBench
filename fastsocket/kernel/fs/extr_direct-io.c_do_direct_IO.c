
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dio_submit {unsigned int blkbits; unsigned int first_block_in_page; unsigned long block_in_file; unsigned long final_block_in_request; int blocks_available; int next_block_for_io; int blkfactor; int boundary; int start_zero_done; } ;
struct dio {int rw; int inode; } ;
struct buffer_head {int b_size; int b_blocknr; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ALIGN (int ,int) ;
 int BUG_ON (int) ;
 int ENOTBLK ;
 scalar_t__ IS_ERR (struct page*) ;
 unsigned int const PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int WRITE ;
 int buffer_boundary (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int clean_blockdev_aliases (struct dio*,struct buffer_head*) ;
 struct page* dio_get_page (struct dio*,struct dio_submit*) ;
 int dio_zero_block (struct dio*,struct dio_submit*,int ,struct buffer_head*) ;
 int get_more_blocks (struct dio*,struct dio_submit*,struct buffer_head*) ;
 int i_size_read (int ) ;
 int page_cache_release (struct page*) ;
 int submit_page_section (struct dio*,struct dio_submit*,struct page*,unsigned int,unsigned int,unsigned long,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int zero_user (struct page*,unsigned int,int) ;

__attribute__((used)) static int do_direct_IO(struct dio *dio, struct dio_submit *sdio,
   struct buffer_head *map_bh)
{
 const unsigned blkbits = sdio->blkbits;
 const unsigned blocks_per_page = PAGE_SIZE >> blkbits;
 struct page *page;
 unsigned block_in_page;
 int ret = 0;


 block_in_page = sdio->first_block_in_page;

 while (sdio->block_in_file < sdio->final_block_in_request) {
  page = dio_get_page(dio, sdio);
  if (IS_ERR(page)) {
   ret = PTR_ERR(page);
   goto out;
  }

  while (block_in_page < blocks_per_page) {
   unsigned offset_in_page = block_in_page << blkbits;
   unsigned this_chunk_bytes;
   unsigned this_chunk_blocks;
   unsigned u;

   if (sdio->blocks_available == 0) {



    unsigned long blkmask;
    unsigned long dio_remainder;

    ret = get_more_blocks(dio, sdio, map_bh);
    if (ret) {
     page_cache_release(page);
     goto out;
    }
    if (!buffer_mapped(map_bh))
     goto do_holes;

    sdio->blocks_available =
      map_bh->b_size >> sdio->blkbits;
    sdio->next_block_for_io =
     map_bh->b_blocknr << sdio->blkfactor;
    if (buffer_new(map_bh))
     clean_blockdev_aliases(dio, map_bh);

    if (!sdio->blkfactor)
     goto do_holes;

    blkmask = (1 << sdio->blkfactor) - 1;
    dio_remainder = (sdio->block_in_file & blkmask);
    if (!buffer_new(map_bh))
     sdio->next_block_for_io += dio_remainder;
    sdio->blocks_available -= dio_remainder;
   }
do_holes:

   if (!buffer_mapped(map_bh)) {
    loff_t i_size_aligned;


    if (dio->rw & WRITE) {
     page_cache_release(page);
     return -ENOTBLK;
    }





    i_size_aligned = ALIGN(i_size_read(dio->inode),
       1 << blkbits);
    if (sdio->block_in_file >=
      i_size_aligned >> blkbits) {

     page_cache_release(page);
     goto out;
    }
    zero_user(page, block_in_page << blkbits,
      1 << blkbits);
    sdio->block_in_file++;
    block_in_page++;
    goto next_block;
   }






   if (unlikely(sdio->blkfactor && !sdio->start_zero_done))
    dio_zero_block(dio, sdio, 0, map_bh);





   this_chunk_blocks = sdio->blocks_available;
   u = (PAGE_SIZE - offset_in_page) >> blkbits;
   if (this_chunk_blocks > u)
    this_chunk_blocks = u;
   u = sdio->final_block_in_request - sdio->block_in_file;
   if (this_chunk_blocks > u)
    this_chunk_blocks = u;
   this_chunk_bytes = this_chunk_blocks << blkbits;
   BUG_ON(this_chunk_bytes == 0);

   sdio->boundary = buffer_boundary(map_bh);
   ret = submit_page_section(dio, sdio, page,
        offset_in_page,
        this_chunk_bytes,
        sdio->next_block_for_io,
        map_bh);
   if (ret) {
    page_cache_release(page);
    goto out;
   }
   sdio->next_block_for_io += this_chunk_blocks;

   sdio->block_in_file += this_chunk_blocks;
   block_in_page += this_chunk_blocks;
   sdio->blocks_available -= this_chunk_blocks;
next_block:
   BUG_ON(sdio->block_in_file > sdio->final_block_in_request);
   if (sdio->block_in_file == sdio->final_block_in_request)
    break;
  }


  page_cache_release(page);
  block_in_page = 0;
 }
out:
 return ret;
}
