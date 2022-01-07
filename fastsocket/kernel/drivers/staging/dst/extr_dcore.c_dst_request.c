
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct dst_node* queuedata; } ;
struct dst_node {int dummy; } ;
struct bio {int dummy; } ;


 int EIO ;
 scalar_t__ bio_empty_barrier (struct bio*) ;
 int bio_endio (struct bio*,int) ;
 int bio_get (struct bio*) ;
 int blk_queue_discard (struct request_queue*) ;
 int dst_process_bio (struct dst_node*,struct bio*) ;

__attribute__((used)) static int dst_request(struct request_queue *q, struct bio *bio)
{
 struct dst_node *n = q->queuedata;
 int err = -EIO;

 if (bio_empty_barrier(bio) && !blk_queue_discard(q)) {
  err = 0;
  goto end_io;
 }

 bio_get(bio);

 return dst_process_bio(n, bio);

end_io:
 bio_endio(bio, err);
 return err;
}
