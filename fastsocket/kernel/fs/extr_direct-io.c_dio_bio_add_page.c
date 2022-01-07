
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int cur_page_len; scalar_t__ cur_page_offset; int blkbits; scalar_t__ cur_page_block; scalar_t__ final_block_in_bio; int cur_page; int pages_in_io; int bio; } ;


 scalar_t__ PAGE_SIZE ;
 int bio_add_page (int ,int ,int,scalar_t__) ;
 int page_cache_get (int ) ;

__attribute__((used)) static inline int dio_bio_add_page(struct dio_submit *sdio)
{
 int ret;

 ret = bio_add_page(sdio->bio, sdio->cur_page,
   sdio->cur_page_len, sdio->cur_page_offset);
 if (ret == sdio->cur_page_len) {



  if ((sdio->cur_page_len + sdio->cur_page_offset) == PAGE_SIZE)
   sdio->pages_in_io--;
  page_cache_get(sdio->cur_page);
  sdio->final_block_in_bio = sdio->cur_page_block +
   (sdio->cur_page_len >> sdio->blkbits);
  ret = 0;
 } else {
  ret = 1;
 }
 return ret;
}
