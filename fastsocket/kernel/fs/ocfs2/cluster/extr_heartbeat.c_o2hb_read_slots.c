
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int dummy; } ;
struct o2hb_bio_wait_ctxt {int wc_error; int wc_num_reqs; } ;
struct bio {int dummy; } ;


 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 int READ ;
 int atomic_inc (int *) ;
 int mlog_errno (int) ;
 int o2hb_bio_wait_init (struct o2hb_bio_wait_ctxt*) ;
 struct bio* o2hb_setup_one_bio (struct o2hb_region*,struct o2hb_bio_wait_ctxt*,unsigned int*,unsigned int) ;
 int o2hb_wait_on_io (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ;
 int submit_bio (int ,struct bio*) ;

__attribute__((used)) static int o2hb_read_slots(struct o2hb_region *reg,
      unsigned int max_slots)
{
 unsigned int current_slot=0;
 int status;
 struct o2hb_bio_wait_ctxt wc;
 struct bio *bio;

 o2hb_bio_wait_init(&wc);

 while(current_slot < max_slots) {
  bio = o2hb_setup_one_bio(reg, &wc, &current_slot, max_slots);
  if (IS_ERR(bio)) {
   status = PTR_ERR(bio);
   mlog_errno(status);
   goto bail_and_wait;
  }

  atomic_inc(&wc.wc_num_reqs);
  submit_bio(READ, bio);
 }

 status = 0;

bail_and_wait:
 o2hb_wait_on_io(reg, &wc);
 if (wc.wc_error && !status)
  status = wc.wc_error;

 return status;
}
