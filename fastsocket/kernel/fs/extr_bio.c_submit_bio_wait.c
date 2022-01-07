
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submit_bio_ret {int error; int event; } ;
struct bio {int bi_end_io; struct submit_bio_ret* bi_private; } ;


 int REQ_SYNC ;
 int init_completion (int *) ;
 int submit_bio (int,struct bio*) ;
 int submit_bio_wait_endio ;
 int wait_for_completion (int *) ;

int submit_bio_wait(int rw, struct bio *bio)
{
 struct submit_bio_ret ret;

 rw |= REQ_SYNC;
 init_completion(&ret.event);
 bio->bi_private = &ret;
 bio->bi_end_io = submit_bio_wait_endio;
 submit_bio(rw, bio);
 wait_for_completion(&ret.event);

 return ret.error;
}
