
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {int b_blocknr; int b_size; int b_page; int b_bdev; int b_end_io; } ;
struct bio {int bi_sector; int bi_vcnt; int bi_size; struct buffer_head* bi_private; int bi_end_io; scalar_t__ bi_idx; TYPE_1__* bi_io_vec; int bi_bdev; } ;
struct TYPE_2__ {int bv_len; int bv_offset; int bv_page; } ;


 int BIO_EOPNOTSUPP ;
 int BUG_ON (int) ;
 int EOPNOTSUPP ;
 int GFP_NOIO ;
 int WRITE ;
 int WRITE_BARRIER ;
 int bh_offset (struct buffer_head*) ;
 struct bio* bio_alloc (int ,int) ;
 scalar_t__ bio_flagged (struct bio*,int ) ;
 int bio_get (struct bio*) ;
 int bio_put (struct bio*) ;
 int buffer_delay (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_ordered (struct buffer_head*) ;
 int buffer_unwritten (struct buffer_head*) ;
 int clear_buffer_write_io_error (struct buffer_head*) ;
 int end_bio_bh_io_sync ;
 int guard_bh_eod (int,struct bio*,struct buffer_head*) ;
 int submit_bio (int,struct bio*) ;
 scalar_t__ test_set_buffer_req (struct buffer_head*) ;

int submit_bh(int rw, struct buffer_head * bh)
{
 struct bio *bio;
 int ret = 0;

 BUG_ON(!buffer_locked(bh));
 BUG_ON(!buffer_mapped(bh));
 BUG_ON(!bh->b_end_io);
 BUG_ON(buffer_delay(bh));
 BUG_ON(buffer_unwritten(bh));





 if (buffer_ordered(bh) && (rw & WRITE))
  rw |= WRITE_BARRIER;




 if (test_set_buffer_req(bh) && (rw & WRITE))
  clear_buffer_write_io_error(bh);





 bio = bio_alloc(GFP_NOIO, 1);

 bio->bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 bio->bi_bdev = bh->b_bdev;
 bio->bi_io_vec[0].bv_page = bh->b_page;
 bio->bi_io_vec[0].bv_len = bh->b_size;
 bio->bi_io_vec[0].bv_offset = bh_offset(bh);

 bio->bi_vcnt = 1;
 bio->bi_idx = 0;
 bio->bi_size = bh->b_size;

 bio->bi_end_io = end_bio_bh_io_sync;
 bio->bi_private = bh;


 guard_bh_eod(rw, bio, bh);

 bio_get(bio);
 submit_bio(rw, bio);

 if (bio_flagged(bio, BIO_EOPNOTSUPP))
  ret = -EOPNOTSUPP;

 bio_put(bio);
 return ret;
}
