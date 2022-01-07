
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct umc_dev*) ;
 struct umc_dev* to_umc_dev (struct device*) ;

__attribute__((used)) static void umc_device_release(struct device *dev)
{
 struct umc_dev *umc = to_umc_dev(dev);

 kfree(umc);
}
