
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_device {struct snd_timer* device_data; } ;
typedef int dev ;


 int memset (struct snd_device*,int ,int) ;
 int snd_timer_dev_register (struct snd_device*) ;

int snd_timer_global_register(struct snd_timer *timer)
{
 struct snd_device dev;

 memset(&dev, 0, sizeof(dev));
 dev.device_data = timer;
 return snd_timer_dev_register(&dev);
}
