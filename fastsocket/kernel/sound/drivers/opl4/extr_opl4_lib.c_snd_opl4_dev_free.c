
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int dummy; } ;
struct snd_device {struct snd_opl4* device_data; } ;


 int snd_opl4_free (struct snd_opl4*) ;

__attribute__((used)) static int snd_opl4_dev_free(struct snd_device *device)
{
 struct snd_opl4 *opl4 = device->device_data;
 snd_opl4_free(opl4);
 return 0;
}
