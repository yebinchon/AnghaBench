
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_bio_wait_ctxt {int wc_io_complete; int wc_num_reqs; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void o2hb_bio_wait_dec(struct o2hb_bio_wait_ctxt *wc,
         unsigned int num)
{


 while(num--) {
  if (atomic_dec_and_test(&wc->wc_num_reqs)) {
   BUG_ON(num > 0);
   complete(&wc->wc_io_complete);
  }
 }
}
