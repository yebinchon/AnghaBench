
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_device {int idx; int lock; int dev; } ;


 int allocated_dsp ;
 int allocated_dsp_lock ;
 int device_unregister (int ) ;
 int idr_remove (int *,int ) ;
 int kfree (struct display_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void display_device_unregister(struct display_device *ddev)
{
 if (!ddev)
  return;

 mutex_lock(&ddev->lock);
 device_unregister(ddev->dev);
 mutex_unlock(&ddev->lock);

 mutex_lock(&allocated_dsp_lock);
 idr_remove(&allocated_dsp, ddev->idx);
 mutex_unlock(&allocated_dsp_lock);
 kfree(ddev);
}
