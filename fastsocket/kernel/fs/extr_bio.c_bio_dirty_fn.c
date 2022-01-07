
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct bio {struct bio* bi_private; } ;


 struct bio* bio_dirty_list ;
 int bio_dirty_lock ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*) ;
 int bio_set_pages_dirty (struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bio_dirty_fn(struct work_struct *work)
{
 unsigned long flags;
 struct bio *bio;

 spin_lock_irqsave(&bio_dirty_lock, flags);
 bio = bio_dirty_list;
 bio_dirty_list = ((void*)0);
 spin_unlock_irqrestore(&bio_dirty_lock, flags);

 while (bio) {
  struct bio *next = bio->bi_private;

  bio_set_pages_dirty(bio);
  bio_release_pages(bio);
  bio_put(bio);
  bio = next;
 }
}
