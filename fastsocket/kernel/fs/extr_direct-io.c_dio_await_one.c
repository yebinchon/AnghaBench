
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio {int refcount; int bio_lock; struct bio* bio_list; int * waiter; } ;
struct bio {struct bio* bi_private; } ;


 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int * current ;
 int io_schedule () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct bio *dio_await_one(struct dio *dio)
{
 unsigned long flags;
 struct bio *bio = ((void*)0);

 spin_lock_irqsave(&dio->bio_lock, flags);







 while (dio->refcount > 1 && dio->bio_list == ((void*)0)) {
  __set_current_state(TASK_UNINTERRUPTIBLE);
  dio->waiter = current;
  spin_unlock_irqrestore(&dio->bio_lock, flags);
  io_schedule();

  spin_lock_irqsave(&dio->bio_lock, flags);
  dio->waiter = ((void*)0);
 }
 if (dio->bio_list) {
  bio = dio->bio_list;
  dio->bio_list = bio->bi_private;
 }
 spin_unlock_irqrestore(&dio->bio_lock, flags);
 return bio;
}
