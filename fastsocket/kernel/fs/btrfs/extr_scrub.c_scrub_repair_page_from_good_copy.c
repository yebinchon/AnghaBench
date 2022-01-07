
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_page {int physical; TYPE_1__* dev; int * page; scalar_t__ io_error; } ;
struct scrub_block {scalar_t__ checksum_error; scalar_t__ header_error; struct scrub_page* pagev; } ;
struct bio {int bi_sector; int * bi_private; int bi_end_io; int bi_bdev; } ;
struct TYPE_2__ {int bdev; } ;


 int BIO_UPTODATE ;
 int BTRFS_DEV_STAT_WRITE_ERRS ;
 int BUG_ON (int ) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 int GFP_NOFS ;
 int PAGE_SIZE ;
 int REQ_SYNC ;
 int WRITE ;
 int bio_add_page (struct bio*,int *,int,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_put (struct bio*) ;
 int btrfs_dev_stat_inc_and_print (TYPE_1__*,int ) ;
 int btrfsic_submit_bio (int,struct bio*) ;
 int complete ;
 int scrub_complete_bio_end_io ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int scrub_repair_page_from_good_copy(struct scrub_block *sblock_bad,
         struct scrub_block *sblock_good,
         int page_num, int force_write)
{
 struct scrub_page *page_bad = sblock_bad->pagev + page_num;
 struct scrub_page *page_good = sblock_good->pagev + page_num;

 BUG_ON(sblock_bad->pagev[page_num].page == ((void*)0));
 BUG_ON(sblock_good->pagev[page_num].page == ((void*)0));
 if (force_write || sblock_bad->header_error ||
     sblock_bad->checksum_error || page_bad->io_error) {
  struct bio *bio;
  int ret;
  DECLARE_COMPLETION_ONSTACK(complete);

  bio = bio_alloc(GFP_NOFS, 1);
  if (!bio)
   return -EIO;
  bio->bi_bdev = page_bad->dev->bdev;
  bio->bi_sector = page_bad->physical >> 9;
  bio->bi_end_io = scrub_complete_bio_end_io;
  bio->bi_private = &complete;

  ret = bio_add_page(bio, page_good->page, PAGE_SIZE, 0);
  if (PAGE_SIZE != ret) {
   bio_put(bio);
   return -EIO;
  }
  btrfsic_submit_bio(WRITE | REQ_SYNC, bio);

  wait_for_completion(&complete);
  if (!bio_flagged(bio, BIO_UPTODATE)) {
   btrfs_dev_stat_inc_and_print(page_bad->dev,
    BTRFS_DEV_STAT_WRITE_ERRS);
   bio_put(bio);
   return -EIO;
  }
  bio_put(bio);
 }

 return 0;
}
