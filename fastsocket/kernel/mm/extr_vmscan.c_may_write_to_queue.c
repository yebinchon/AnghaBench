
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backing_dev_info {int dummy; } ;
struct TYPE_2__ {int flags; struct backing_dev_info* backing_dev_info; } ;


 int PF_SWAPWRITE ;
 int bdi_write_congested (struct backing_dev_info*) ;
 TYPE_1__* current ;

__attribute__((used)) static int may_write_to_queue(struct backing_dev_info *bdi)
{
 if (current->flags & PF_SWAPWRITE)
  return 1;
 if (!bdi_write_congested(bdi))
  return 1;
 if (bdi == current->backing_dev_info)
  return 1;
 return 0;
}
