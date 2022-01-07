
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_flags; struct bio* bi_private; } ;
typedef int mempool_t ;


 int BIO_UPTODATE ;
 int bounce_end_io (struct bio*,int *,int) ;
 int copy_to_high_bio_irq (struct bio*,struct bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __bounce_end_io_read(struct bio *bio, mempool_t *pool, int err)
{
 struct bio *bio_orig = bio->bi_private;

 if (test_bit(BIO_UPTODATE, &bio->bi_flags))
  copy_to_high_bio_irq(bio_orig, bio);

 bounce_end_io(bio, pool, err);
}
