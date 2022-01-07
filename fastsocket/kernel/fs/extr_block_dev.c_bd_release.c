
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int * bd_holder; int bd_holders; TYPE_1__* bd_contains; } ;
struct TYPE_2__ {int * bd_holder; int bd_holders; } ;


 int bdev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bd_release(struct block_device *bdev)
{
 spin_lock(&bdev_lock);
 if (!--bdev->bd_contains->bd_holders)
  bdev->bd_contains->bd_holder = ((void*)0);
 if (!--bdev->bd_holders)
  bdev->bd_holder = ((void*)0);
 spin_unlock(&bdev_lock);
}
