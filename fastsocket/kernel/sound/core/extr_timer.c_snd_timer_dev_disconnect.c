
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int device_list; } ;
struct snd_device {struct snd_timer* device_data; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;

__attribute__((used)) static int snd_timer_dev_disconnect(struct snd_device *device)
{
 struct snd_timer *timer = device->device_data;
 mutex_lock(&register_mutex);
 list_del_init(&timer->device_list);
 mutex_unlock(&register_mutex);
 return 0;
}
