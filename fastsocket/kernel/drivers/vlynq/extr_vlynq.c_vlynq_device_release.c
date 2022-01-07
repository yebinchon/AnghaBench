
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlynq_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct vlynq_device*) ;
 struct vlynq_device* to_vlynq_device (struct device*) ;

__attribute__((used)) static void vlynq_device_release(struct device *dev)
{
 struct vlynq_device *vdev = to_vlynq_device(dev);
 kfree(vdev);
}
