
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct scrub_page {int io_error; int physical; int page; TYPE_1__* dev; } ;
struct scrub_block {int no_io_error_seen; int page_count; struct scrub_page* pagev; scalar_t__ checksum_error; scalar_t__ header_error; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int bi_sector; int bi_flags; int * bi_private; int bi_end_io; int * bi_bdev; } ;
struct TYPE_2__ {int * bdev; } ;


 int BIO_UPTODATE ;
 int BUG_ON (int) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 int GFP_NOFS ;
 int PAGE_SIZE ;
 int READ ;
 int REQ_SYNC ;
 int bio_add_page (struct bio*,int ,int,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_put (struct bio*) ;
 int btrfsic_submit_bio (int,struct bio*) ;
 int complete ;
 int scrub_complete_bio_end_io ;
 int scrub_recheck_block_checksum (struct btrfs_fs_info*,struct scrub_block*,int,int,int *,int ,int ) ;
 int test_bit (int ,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int scrub_recheck_block(struct btrfs_fs_info *fs_info,
          struct scrub_block *sblock, int is_metadata,
          int have_csum, u8 *csum, u64 generation,
          u16 csum_size)
{
 int page_num;

 sblock->no_io_error_seen = 1;
 sblock->header_error = 0;
 sblock->checksum_error = 0;

 for (page_num = 0; page_num < sblock->page_count; page_num++) {
  struct bio *bio;
  int ret;
  struct scrub_page *page = sblock->pagev + page_num;
  DECLARE_COMPLETION_ONSTACK(complete);

  if (page->dev->bdev == ((void*)0)) {
   page->io_error = 1;
   sblock->no_io_error_seen = 0;
   continue;
  }

  BUG_ON(!page->page);
  bio = bio_alloc(GFP_NOFS, 1);
  if (!bio)
   return -EIO;
  bio->bi_bdev = page->dev->bdev;
  bio->bi_sector = page->physical >> 9;
  bio->bi_end_io = scrub_complete_bio_end_io;
  bio->bi_private = &complete;

  ret = bio_add_page(bio, page->page, PAGE_SIZE, 0);
  if (PAGE_SIZE != ret) {
   bio_put(bio);
   return -EIO;
  }
  btrfsic_submit_bio(READ | REQ_SYNC, bio);

  wait_for_completion(&complete);

  page->io_error = !test_bit(BIO_UPTODATE, &bio->bi_flags);
  if (!test_bit(BIO_UPTODATE, &bio->bi_flags))
   sblock->no_io_error_seen = 0;
  bio_put(bio);
 }

 if (sblock->no_io_error_seen)
  scrub_recheck_block_checksum(fs_info, sblock, is_metadata,
          have_csum, csum, generation,
          csum_size);

 return 0;
}
