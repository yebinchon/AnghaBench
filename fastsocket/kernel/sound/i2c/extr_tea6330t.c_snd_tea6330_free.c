
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_device {int private_data; } ;


 int kfree (int ) ;

__attribute__((used)) static void snd_tea6330_free(struct snd_i2c_device *device)
{
 kfree(device->private_data);
}
