
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio_submit {scalar_t__ cur_page_fs_offset; scalar_t__ logical_offset_in_bio; scalar_t__ final_block_in_bio; scalar_t__ cur_page_block; TYPE_1__* bio; scalar_t__ boundary; } ;
struct dio {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ bi_size; } ;


 int BUG_ON (int) ;
 int dio_bio_add_page (struct dio_submit*) ;
 int dio_bio_submit (struct dio*,struct dio_submit*) ;
 int dio_new_bio (struct dio*,struct dio_submit*,scalar_t__,struct buffer_head*) ;

__attribute__((used)) static inline int dio_send_cur_page(struct dio *dio, struct dio_submit *sdio,
  struct buffer_head *map_bh)
{
 int ret = 0;

 if (sdio->bio) {
  loff_t cur_offset = sdio->cur_page_fs_offset;
  loff_t bio_next_offset = sdio->logical_offset_in_bio +
   sdio->bio->bi_size;
  if (sdio->final_block_in_bio != sdio->cur_page_block ||
      cur_offset != bio_next_offset)
   dio_bio_submit(dio, sdio);




  else if (sdio->boundary)
   dio_bio_submit(dio, sdio);
 }

 if (sdio->bio == ((void*)0)) {
  ret = dio_new_bio(dio, sdio, sdio->cur_page_block, map_bh);
  if (ret)
   goto out;
 }

 if (dio_bio_add_page(sdio) != 0) {
  dio_bio_submit(dio, sdio);
  ret = dio_new_bio(dio, sdio, sdio->cur_page_block, map_bh);
  if (ret == 0) {
   ret = dio_bio_add_page(sdio);
   BUG_ON(ret != 0);
  }
 }
out:
 return ret;
}
