
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_page {int physical; scalar_t__ logical; int page; struct scrub_block* sblock; } ;
struct scrub_dev {int curr; int first_free; scalar_t__ pages_per_bio; TYPE_1__* dev; struct scrub_bio** bios; int list_wait; int list_lock; } ;
struct scrub_block {int outstanding_pages; } ;
struct scrub_bio {int next_free; int page_count; int physical; scalar_t__ logical; struct bio* bio; struct scrub_page** pagev; scalar_t__ err; } ;
struct bio {int bi_sector; int bi_bdev; int bi_end_io; struct scrub_bio* bi_private; } ;
struct TYPE_2__ {int bdev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int PAGE_SIZE ;
 int atomic_inc (int *) ;
 int bio_add_page (struct bio*,int ,int,int ) ;
 struct bio* bio_alloc (int ,scalar_t__) ;
 int bio_put (struct bio*) ;
 int scrub_bio_end_io ;
 int scrub_block_get (struct scrub_block*) ;
 int scrub_submit (struct scrub_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int scrub_add_page_to_bio(struct scrub_dev *sdev,
     struct scrub_page *spage)
{
 struct scrub_block *sblock = spage->sblock;
 struct scrub_bio *sbio;
 int ret;

again:



 while (sdev->curr == -1) {
  spin_lock(&sdev->list_lock);
  sdev->curr = sdev->first_free;
  if (sdev->curr != -1) {
   sdev->first_free = sdev->bios[sdev->curr]->next_free;
   sdev->bios[sdev->curr]->next_free = -1;
   sdev->bios[sdev->curr]->page_count = 0;
   spin_unlock(&sdev->list_lock);
  } else {
   spin_unlock(&sdev->list_lock);
   wait_event(sdev->list_wait, sdev->first_free != -1);
  }
 }
 sbio = sdev->bios[sdev->curr];
 if (sbio->page_count == 0) {
  struct bio *bio;

  sbio->physical = spage->physical;
  sbio->logical = spage->logical;
  bio = sbio->bio;
  if (!bio) {
   bio = bio_alloc(GFP_NOFS, sdev->pages_per_bio);
   if (!bio)
    return -ENOMEM;
   sbio->bio = bio;
  }

  bio->bi_private = sbio;
  bio->bi_end_io = scrub_bio_end_io;
  bio->bi_bdev = sdev->dev->bdev;
  bio->bi_sector = spage->physical >> 9;
  sbio->err = 0;
 } else if (sbio->physical + sbio->page_count * PAGE_SIZE !=
     spage->physical ||
     sbio->logical + sbio->page_count * PAGE_SIZE !=
     spage->logical) {
  scrub_submit(sdev);
  goto again;
 }

 sbio->pagev[sbio->page_count] = spage;
 ret = bio_add_page(sbio->bio, spage->page, PAGE_SIZE, 0);
 if (ret != PAGE_SIZE) {
  if (sbio->page_count < 1) {
   bio_put(sbio->bio);
   sbio->bio = ((void*)0);
   return -EIO;
  }
  scrub_submit(sdev);
  goto again;
 }

 scrub_block_get(sblock);
 atomic_inc(&sblock->outstanding_pages);
 sbio->page_count++;
 if (sbio->page_count == sdev->pages_per_bio)
  scrub_submit(sdev);

 return 0;
}
