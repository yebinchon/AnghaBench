
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int logical_offset_in_bio; scalar_t__ boundary; struct bio* bio; int (* submit_io ) (scalar_t__,struct bio*,int ,int ) ;} ;
struct dio {scalar_t__ rw; int inode; scalar_t__ is_async; int bio_lock; int refcount; } ;
struct bio {struct dio* bi_private; } ;


 scalar_t__ READ ;
 int bio_set_pages_dirty (struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__,struct bio*,int ,int ) ;
 int submit_bio (scalar_t__,struct bio*) ;

__attribute__((used)) static inline void dio_bio_submit(struct dio *dio, struct dio_submit *sdio)
{
 struct bio *bio = sdio->bio;
 unsigned long flags;

 bio->bi_private = dio;

 spin_lock_irqsave(&dio->bio_lock, flags);
 dio->refcount++;
 spin_unlock_irqrestore(&dio->bio_lock, flags);

 if (dio->is_async && dio->rw == READ)
  bio_set_pages_dirty(bio);

 if (sdio->submit_io)
  sdio->submit_io(dio->rw, bio, dio->inode,
          sdio->logical_offset_in_bio);
 else
  submit_bio(dio->rw, bio);

 sdio->bio = ((void*)0);
 sdio->boundary = 0;
 sdio->logical_offset_in_bio = 0;
}
