
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display_device {int lock; TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume ) (struct display_device*) ;} ;


 struct display_device* dev_get_drvdata (struct device*) ;
 scalar_t__ likely (int (*) (struct display_device*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct display_device*) ;

__attribute__((used)) static int display_resume(struct device *dev)
{
 struct display_device *dsp = dev_get_drvdata(dev);

 mutex_lock(&dsp->lock);
 if (likely(dsp->driver->resume))
  dsp->driver->resume(dsp);
 mutex_unlock(&dsp->lock);
 return 0;
}
