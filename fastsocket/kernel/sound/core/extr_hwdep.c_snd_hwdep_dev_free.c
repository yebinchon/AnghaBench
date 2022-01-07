
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int dummy; } ;
struct snd_device {struct snd_hwdep* device_data; } ;


 int snd_hwdep_free (struct snd_hwdep*) ;

__attribute__((used)) static int snd_hwdep_dev_free(struct snd_device *device)
{
 struct snd_hwdep *hwdep = device->device_data;
 return snd_hwdep_free(hwdep);
}
