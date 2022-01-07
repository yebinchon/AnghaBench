
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_bio_wait_ctxt {scalar_t__ wc_error; int wc_io_complete; int wc_num_reqs; } ;


 int atomic_set (int *,int) ;
 int init_completion (int *) ;

__attribute__((used)) static inline void o2hb_bio_wait_init(struct o2hb_bio_wait_ctxt *wc)
{
 atomic_set(&wc->wc_num_reqs, 1);
 init_completion(&wc->wc_io_complete);
 wc->wc_error = 0;
}
