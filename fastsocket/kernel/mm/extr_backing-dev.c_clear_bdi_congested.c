
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct backing_dev_info {int state; } ;
typedef enum bdi_state { ____Placeholder_bdi_state } bdi_state ;


 int BDI_async_congested ;
 int BDI_sync_congested ;
 int atomic_dec (int *) ;
 int * congestion_wqh ;
 int * nr_bdi_congested ;
 int smp_mb__after_clear_bit () ;
 scalar_t__ test_and_clear_bit (int,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void clear_bdi_congested(struct backing_dev_info *bdi, int sync)
{
 enum bdi_state bit;
 wait_queue_head_t *wqh = &congestion_wqh[sync];

 bit = sync ? BDI_sync_congested : BDI_async_congested;
 if (test_and_clear_bit(bit, &bdi->state))
  atomic_dec(&nr_bdi_congested[sync]);
 smp_mb__after_clear_bit();
 if (waitqueue_active(wqh))
  wake_up(wqh);
}
