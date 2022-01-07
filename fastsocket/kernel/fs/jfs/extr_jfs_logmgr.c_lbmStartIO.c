
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbuf {int l_blkno; int l_offset; int l_page; struct jfs_log* l_log; } ;
struct jfs_log {int l2bsize; scalar_t__ no_integrity; int bdev; } ;
struct bio {int bi_sector; int bi_vcnt; void* bi_size; struct lbuf* bi_private; int (* bi_end_io ) (struct bio*,int ) ;scalar_t__ bi_idx; TYPE_1__* bi_io_vec; int bi_bdev; } ;
struct TYPE_4__ {int submitted; } ;
struct TYPE_3__ {int bv_offset; void* bv_len; int bv_page; } ;


 int GFP_NOFS ;
 int INCREMENT (int ) ;
 void* LOGPSIZE ;
 int WRITE_SYNC ;
 struct bio* bio_alloc (int ,int) ;
 int jfs_info (char*) ;
 int lbmIODone (struct bio*,int ) ;
 TYPE_2__ lmStat ;
 int submit_bio (int ,struct bio*) ;

__attribute__((used)) static void lbmStartIO(struct lbuf * bp)
{
 struct bio *bio;
 struct jfs_log *log = bp->l_log;

 jfs_info("lbmStartIO\n");

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


 if (log->no_integrity) {
  bio->bi_size = 0;
  lbmIODone(bio, 0);
 } else {
  submit_bio(WRITE_SYNC, bio);
  INCREMENT(lmStat.submitted);
 }
}
