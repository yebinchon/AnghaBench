
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio {int bi_flags; int bi_max_vecs; int bi_destructor; int bi_inline_vecs; int bi_io_vec; } ;
typedef int gfp_t ;


 int BIO_POOL_NONE ;
 int BIO_POOL_OFFSET ;
 int bio_init (struct bio*) ;
 int bio_kmalloc_destructor ;
 struct bio* kmalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

struct bio *bio_kmalloc(gfp_t gfp_mask, int nr_iovecs)
{
 struct bio *bio;

 bio = kmalloc(sizeof(struct bio) + nr_iovecs * sizeof(struct bio_vec),
        gfp_mask);
 if (unlikely(!bio))
  return ((void*)0);

 bio_init(bio);
 bio->bi_flags |= BIO_POOL_NONE << BIO_POOL_OFFSET;
 bio->bi_max_vecs = nr_iovecs;
 bio->bi_io_vec = bio->bi_inline_vecs;
 bio->bi_destructor = bio_kmalloc_destructor;

 return bio;
}
