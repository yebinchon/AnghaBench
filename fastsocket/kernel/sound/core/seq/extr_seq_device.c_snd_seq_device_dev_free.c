
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int dummy; } ;
struct snd_device {struct snd_seq_device* device_data; } ;


 int snd_seq_device_free (struct snd_seq_device*) ;

__attribute__((used)) static int snd_seq_device_dev_free(struct snd_device *device)
{
 struct snd_seq_device *dev = device->device_data;
 return snd_seq_device_free(dev);
}
