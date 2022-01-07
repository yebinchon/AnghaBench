
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct device {int sem; } ;


 int EAGAIN ;
 int device_for_each_child (struct device*,struct device*,int ) ;
 scalar_t__ down_trylock (int *) ;
 int umc_bus_post_reset_helper ;
 int umc_bus_pre_reset_helper ;
 int up (int *) ;

int umc_controller_reset(struct umc_dev *umc)
{
 struct device *parent = umc->dev.parent;
 int ret = 0;

 if(down_trylock(&parent->sem))
  return -EAGAIN;
 ret = device_for_each_child(parent, parent, umc_bus_pre_reset_helper);
 if (ret >= 0)
  ret = device_for_each_child(parent, parent, umc_bus_post_reset_helper);
 up(&parent->sem);

 return ret;
}
