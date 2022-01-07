
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int state; } ;
typedef enum bdi_state { ____Placeholder_bdi_state } bdi_state ;


 int BDI_async_congested ;
 int BDI_sync_congested ;
 int atomic_inc (int *) ;
 int * nr_bdi_congested ;
 int test_and_set_bit (int,int *) ;

void set_bdi_congested(struct backing_dev_info *bdi, int sync)
{
 enum bdi_state bit;

 bit = sync ? BDI_sync_congested : BDI_async_congested;
 if (!test_and_set_bit(bit, &bdi->state))
  atomic_inc(&nr_bdi_congested[sync]);
}
