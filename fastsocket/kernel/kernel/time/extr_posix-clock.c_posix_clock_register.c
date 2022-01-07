
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int owner; } ;
struct TYPE_4__ {int owner; } ;
struct posix_clock {TYPE_2__ cdev; TYPE_1__ ops; int rwsem; int kref; } ;
typedef int dev_t ;


 int cdev_add (TYPE_2__*,int ,int) ;
 int cdev_init (TYPE_2__*,int *) ;
 int init_rwsem (int *) ;
 int kref_init (int *) ;
 int posix_clock_file_operations ;

int posix_clock_register(struct posix_clock *clk, dev_t devid)
{
 int err;

 kref_init(&clk->kref);
 init_rwsem(&clk->rwsem);

 cdev_init(&clk->cdev, &posix_clock_file_operations);
 clk->cdev.owner = clk->ops.owner;
 err = cdev_add(&clk->cdev, devid, 1);

 return err;
}
