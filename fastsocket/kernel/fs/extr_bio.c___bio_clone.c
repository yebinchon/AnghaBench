
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio {int bi_max_vecs; int bi_flags; int bi_idx; int bi_size; int bi_vcnt; int bi_rw; int bi_bdev; int bi_sector; int bi_io_vec; } ;


 int BIO_CLONED ;
 int memcpy (int ,int ,int) ;

void __bio_clone(struct bio *bio, struct bio *bio_src)
{
 memcpy(bio->bi_io_vec, bio_src->bi_io_vec,
  bio_src->bi_max_vecs * sizeof(struct bio_vec));





 bio->bi_sector = bio_src->bi_sector;
 bio->bi_bdev = bio_src->bi_bdev;
 bio->bi_flags |= 1 << BIO_CLONED;
 bio->bi_rw = bio_src->bi_rw;
 bio->bi_vcnt = bio_src->bi_vcnt;
 bio->bi_size = bio_src->bi_size;
 bio->bi_idx = bio_src->bi_idx;
}
