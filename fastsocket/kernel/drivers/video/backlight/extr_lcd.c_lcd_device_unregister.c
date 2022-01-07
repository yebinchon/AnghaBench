
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; int ops_lock; int * ops; } ;


 int device_unregister (int *) ;
 int lcd_unregister_fb (struct lcd_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void lcd_device_unregister(struct lcd_device *ld)
{
 if (!ld)
  return;

 mutex_lock(&ld->ops_lock);
 ld->ops = ((void*)0);
 mutex_unlock(&ld->ops_lock);
 lcd_unregister_fb(ld);

 device_unregister(&ld->dev);
}
