
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;


 int __bdi_start_writeback (struct backing_dev_info*,long,int,int) ;

void bdi_start_writeback(struct backing_dev_info *bdi, long nr_pages)
{
 __bdi_start_writeback(bdi, nr_pages, 1, 0);
}
