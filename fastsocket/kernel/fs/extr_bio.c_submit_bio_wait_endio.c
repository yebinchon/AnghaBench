
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submit_bio_ret {int error; int event; } ;
struct bio {struct submit_bio_ret* bi_private; } ;


 int complete (int *) ;

__attribute__((used)) static void submit_bio_wait_endio(struct bio *bio, int error)
{
 struct submit_bio_ret *ret = bio->bi_private;

 ret->error = error;
 complete(&ret->event);
}
