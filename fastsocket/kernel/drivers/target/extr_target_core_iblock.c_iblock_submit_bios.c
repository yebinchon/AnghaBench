
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* unplug_fn ) (struct request_queue*) ;} ;
struct bio_list {int dummy; } ;
struct bio {int bi_bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int stub1 (struct request_queue*) ;
 int submit_bio (int,struct bio*) ;

__attribute__((used)) static void iblock_submit_bios(struct bio_list *list, int rw)
{
 struct bio *bio;
 struct request_queue *q = ((void*)0);

 while ((bio = bio_list_pop(list))) {
  submit_bio(rw, bio);
  q = bdev_get_queue(bio->bi_bdev);
 }

 if (q && q->unplug_fn)
  q->unplug_fn(q);
}
