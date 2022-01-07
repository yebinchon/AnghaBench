
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbuf {int l_blkno; int l_flag; int l_ioevent; int l_offset; int l_page; } ;
struct jfs_log {int l2bsize; int bdev; } ;
struct bio {int bi_sector; int bi_vcnt; struct lbuf* bi_private; int bi_end_io; void* bi_size; scalar_t__ bi_idx; TYPE_1__* bi_io_vec; int bi_bdev; } ;
struct TYPE_2__ {int bv_offset; void* bv_len; int bv_page; } ;


 int GFP_NOFS ;
 void* LOGPSIZE ;
 int READ_SYNC ;
 struct bio* bio_alloc (int ,int) ;
 int jfs_info (char*,struct lbuf*,int) ;
 struct lbuf* lbmAllocate (struct jfs_log*,int) ;
 int lbmIODone ;
 int lbmREAD ;
 int submit_bio (int ,struct bio*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
{
 struct bio *bio;
 struct lbuf *bp;




 *bpp = bp = lbmAllocate(log, pn);
 jfs_info("lbmRead: bp:0x%p pn:0x%x", bp, pn);

 bp->l_flag |= lbmREAD;

 bio = bio_alloc(GFP_NOFS, 1);

 bio->bi_sector = bp->l_blkno << (log->l2bsize - 9);
 bio->bi_bdev = log->bdev;
 bio->bi_io_vec[0].bv_page = bp->l_page;
 bio->bi_io_vec[0].bv_len = LOGPSIZE;
 bio->bi_io_vec[0].bv_offset = bp->l_offset;

 bio->bi_vcnt = 1;
 bio->bi_idx = 0;
 bio->bi_size = LOGPSIZE;

 bio->bi_end_io = lbmIODone;
 bio->bi_private = bp;
 submit_bio(READ_SYNC, bio);

 wait_event(bp->l_ioevent, (bp->l_flag != lbmREAD));

 return 0;
}
