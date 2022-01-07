
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zram {int lock; } ;
struct bio_vec {int dummy; } ;
struct bio {int dummy; } ;


 int READ ;
 int down_read (int *) ;
 int down_write (int *) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int zram_bvec_read (struct zram*,struct bio_vec*,int ,int,struct bio*) ;
 int zram_bvec_write (struct zram*,struct bio_vec*,int ,int) ;

__attribute__((used)) static int zram_bvec_rw(struct zram *zram, struct bio_vec *bvec, u32 index,
   int offset, struct bio *bio, int rw)
{
 int ret;

 if (rw == READ) {
  down_read(&zram->lock);
  ret = zram_bvec_read(zram, bvec, index, offset, bio);
  up_read(&zram->lock);
 } else {
  down_write(&zram->lock);
  ret = zram_bvec_write(zram, bvec, index, offset);
  up_write(&zram->lock);
 }

 return ret;
}
