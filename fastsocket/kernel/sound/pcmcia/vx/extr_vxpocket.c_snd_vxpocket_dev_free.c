
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_device {struct vx_core* device_data; } ;


 int kfree (struct vx_core*) ;
 int snd_vx_free_firmware (struct vx_core*) ;

__attribute__((used)) static int snd_vxpocket_dev_free(struct snd_device *device)
{
 struct vx_core *chip = device->device_data;

 snd_vx_free_firmware(chip);
 kfree(chip);
 return 0;
}
