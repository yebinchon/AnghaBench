
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int (* bi_destructor ) (struct bio*) ;int * bi_next; int bi_cnt; } ;


 int BIO_BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int stub1 (struct bio*) ;

void bio_put(struct bio *bio)
{
 BIO_BUG_ON(!atomic_read(&bio->bi_cnt));




 if (atomic_dec_and_test(&bio->bi_cnt)) {
  bio->bi_next = ((void*)0);
  bio->bi_destructor(bio);
 }
}
