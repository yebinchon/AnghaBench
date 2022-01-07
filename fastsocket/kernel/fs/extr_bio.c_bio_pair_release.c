
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bi_private; } ;
struct TYPE_3__ {struct bio* bi_private; } ;
struct bio_pair {TYPE_2__ bio2; int error; TYPE_1__ bio1; int cnt; } ;
struct bio {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_endio (struct bio*,int ) ;
 int mempool_free (struct bio_pair*,int ) ;

void bio_pair_release(struct bio_pair *bp)
{
 if (atomic_dec_and_test(&bp->cnt)) {
  struct bio *master = bp->bio1.bi_private;

  bio_endio(master, bp->error);
  mempool_free(bp, bp->bio2.bi_private);
 }
}
