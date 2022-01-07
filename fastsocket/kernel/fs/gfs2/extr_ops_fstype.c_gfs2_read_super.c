
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_bdev; } ;
struct page {int dummy; } ;
struct gfs2_sbd {int sd_sb; struct super_block* sd_vfs; } ;
struct gfs2_sb {int dummy; } ;
struct bio {int bi_sector; struct page* bi_private; int bi_end_io; int bi_bdev; } ;
typedef int sector_t ;


 int BIO_RW_META ;
 int ClearPageDirty (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int EIO ;
 int ENOBUFS ;
 int GFP_NOFS ;
 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int READ_SYNC ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int bio_add_page (struct bio*,struct page*,int ,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_put (struct bio*) ;
 int end_bio_io_page ;
 int gfs2_sb_in (int *,struct gfs2_sb*) ;
 struct gfs2_sb* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int lock_page (struct page*) ;
 int submit_bio (int,struct bio*) ;
 scalar_t__ unlikely (int) ;
 int wait_on_page_locked (struct page*) ;

__attribute__((used)) static int gfs2_read_super(struct gfs2_sbd *sdp, sector_t sector)
{
 struct super_block *sb = sdp->sd_vfs;
 struct gfs2_sb *p;
 struct page *page;
 struct bio *bio;

 page = alloc_page(GFP_NOFS);
 if (unlikely(!page))
  return -ENOBUFS;

 ClearPageUptodate(page);
 ClearPageDirty(page);
 lock_page(page);

 bio = bio_alloc(GFP_NOFS, 1);
 bio->bi_sector = sector * (sb->s_blocksize >> 9);
 bio->bi_bdev = sb->s_bdev;
 bio_add_page(bio, page, PAGE_SIZE, 0);

 bio->bi_end_io = end_bio_io_page;
 bio->bi_private = page;
 submit_bio(READ_SYNC | (1 << BIO_RW_META), bio);
 wait_on_page_locked(page);
 bio_put(bio);
 if (!PageUptodate(page)) {
  __free_page(page);
  return -EIO;
 }
 p = kmap(page);
 gfs2_sb_in(&sdp->sd_sb, p);
 kunmap(page);
 __free_page(page);
 return 0;
}
