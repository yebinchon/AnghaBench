
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int bio_pool; scalar_t__ front_pad; } ;
struct bio {int bi_io_vec; } ;


 int BIO_POOL_IDX (struct bio*) ;
 scalar_t__ bio_has_allocated_vec (struct bio*) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_free (struct bio*,struct bio_set*) ;
 int bvec_free_bs (struct bio_set*,int ,int ) ;
 int mempool_free (void*,int ) ;

void bio_free(struct bio *bio, struct bio_set *bs)
{
 void *p;

 if (bio_has_allocated_vec(bio))
  bvec_free_bs(bs, bio->bi_io_vec, BIO_POOL_IDX(bio));

 if (bio_integrity(bio))
  bio_integrity_free(bio, bs);




 p = bio;
 if (bs->front_pad)
  p -= bs->front_pad;

 mempool_free(p, bs->bio_pool);
}
