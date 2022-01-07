
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int wb; } ;


 int wb_has_dirty_io (int *) ;

int bdi_has_dirty_io(struct backing_dev_info *bdi)
{
 return wb_has_dirty_io(&bdi->wb);
}
