
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int state; } ;


 int BDI_writeback_running ;
 int test_bit (int ,int *) ;

int writeback_in_progress(struct backing_dev_info *bdi)
{
 return test_bit(BDI_writeback_running, &bdi->state);
}
