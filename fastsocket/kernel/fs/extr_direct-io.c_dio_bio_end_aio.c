
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio {unsigned long refcount; TYPE_1__* iocb; int bio_lock; scalar_t__ waiter; } ;
struct bio {struct dio* bi_private; } ;
struct TYPE_2__ {int ki_pos; } ;


 int dio_bio_complete (struct dio*,struct bio*) ;
 int dio_cache ;
 int dio_complete (struct dio*,int ,int ,int) ;
 int kmem_cache_free (int ,struct dio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void dio_bio_end_aio(struct bio *bio, int error)
{
 struct dio *dio = bio->bi_private;
 unsigned long remaining;
 unsigned long flags;


 dio_bio_complete(dio, bio);

 spin_lock_irqsave(&dio->bio_lock, flags);
 remaining = --dio->refcount;
 if (remaining == 1 && dio->waiter)
  wake_up_process(dio->waiter);
 spin_unlock_irqrestore(&dio->bio_lock, flags);

 if (remaining == 0) {
  dio_complete(dio, dio->iocb->ki_pos, 0, 1);
  kmem_cache_free(dio_cache, dio);
 }
}
