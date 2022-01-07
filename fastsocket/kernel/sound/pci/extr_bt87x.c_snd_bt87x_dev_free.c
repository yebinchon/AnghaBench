
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_bt87x* device_data; } ;
struct snd_bt87x {int dummy; } ;


 int snd_bt87x_free (struct snd_bt87x*) ;

__attribute__((used)) static int snd_bt87x_dev_free(struct snd_device *device)
{
 struct snd_bt87x *chip = device->device_data;
 return snd_bt87x_free(chip);
}
