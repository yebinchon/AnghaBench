
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_device {int dev; } ;


 int device_unregister (int *) ;

void video_output_unregister(struct output_device *dev)
{
 if (!dev)
  return;
 device_unregister(&dev->dev);
}
