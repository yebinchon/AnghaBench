
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;


 int LONG_MAX ;
 int __bdi_start_writeback (struct backing_dev_info*,int ,int,int) ;

void bdi_start_background_writeback(struct backing_dev_info *bdi)
{
 __bdi_start_writeback(bdi, LONG_MAX, 1, 1);
}
