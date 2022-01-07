
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int (* b_end_io ) (struct buffer_head*,int ) ;int b_state; } ;
struct bio {int bi_flags; struct buffer_head* bi_private; } ;


 int BH_Eopnotsupp ;
 int BH_Quiet ;
 int BIO_EOPNOTSUPP ;
 int BIO_QUIET ;
 int BIO_UPTODATE ;
 int EOPNOTSUPP ;
 int bio_put (struct bio*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct buffer_head*,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void end_bio_bh_io_sync(struct bio *bio, int err)
{
 struct buffer_head *bh = bio->bi_private;

 if (err == -EOPNOTSUPP) {
  set_bit(BIO_EOPNOTSUPP, &bio->bi_flags);
  set_bit(BH_Eopnotsupp, &bh->b_state);
 }

 if (unlikely (test_bit(BIO_QUIET,&bio->bi_flags)))
  set_bit(BH_Quiet, &bh->b_state);

 bh->b_end_io(bh, test_bit(BIO_UPTODATE, &bio->bi_flags));
 bio_put(bio);
}
