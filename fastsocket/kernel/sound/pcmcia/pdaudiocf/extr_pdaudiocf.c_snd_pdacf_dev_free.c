
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {int dummy; } ;
struct snd_device {struct snd_pdacf* device_data; } ;


 int snd_pdacf_free (struct snd_pdacf*) ;

__attribute__((used)) static int snd_pdacf_dev_free(struct snd_device *device)
{
 struct snd_pdacf *chip = device->device_data;
 return snd_pdacf_free(chip);
}
