
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {int bi_phys_segments; } ;


 int BIO_SEG_VALID ;
 int bio_flagged (struct bio*,int ) ;
 int blk_recount_segments (struct request_queue*,struct bio*) ;
 scalar_t__ unlikely (int) ;

inline int bio_phys_segments(struct request_queue *q, struct bio *bio)
{
 if (unlikely(!bio_flagged(bio, BIO_SEG_VALID)))
  blk_recount_segments(q, bio);

 return bio->bi_phys_segments;
}
