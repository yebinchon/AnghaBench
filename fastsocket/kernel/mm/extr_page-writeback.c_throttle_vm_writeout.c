
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int BLK_RW_ASYNC ;
 int HZ ;
 int NR_UNSTABLE_NFS ;
 int NR_WRITEBACK ;
 int __GFP_FS ;
 int __GFP_IO ;
 int congestion_wait (int ,int) ;
 int get_dirty_limits (unsigned long*,unsigned long*,int *,int *) ;
 unsigned long global_page_state (int ) ;

void throttle_vm_writeout(gfp_t gfp_mask)
{
 unsigned long background_thresh;
 unsigned long dirty_thresh;

        for ( ; ; ) {
  get_dirty_limits(&background_thresh, &dirty_thresh, ((void*)0), ((void*)0));





                dirty_thresh += dirty_thresh / 10;

                if (global_page_state(NR_UNSTABLE_NFS) +
   global_page_state(NR_WRITEBACK) <= dirty_thresh)
                         break;
                congestion_wait(BLK_RW_ASYNC, HZ/10);






  if ((gfp_mask & (__GFP_FS|__GFP_IO)) != (__GFP_FS|__GFP_IO))
   break;
        }
}
