
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void w1_free_dev(struct w1_master *dev)
{
 device_unregister(&dev->dev);
}
