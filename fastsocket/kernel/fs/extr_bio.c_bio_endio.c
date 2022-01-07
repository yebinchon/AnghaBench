
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int (* bi_end_io ) (struct bio*,int) ;int bi_flags; } ;


 int BIO_UPTODATE ;
 int EIO ;
 int clear_bit (int ,int *) ;
 int stub1 (struct bio*,int) ;
 int test_bit (int ,int *) ;

void bio_endio(struct bio *bio, int error)
{
 if (error)
  clear_bit(BIO_UPTODATE, &bio->bi_flags);
 else if (!test_bit(BIO_UPTODATE, &bio->bi_flags))
  error = -EIO;

 if (bio->bi_end_io)
  bio->bi_end_io(bio, error);
}
