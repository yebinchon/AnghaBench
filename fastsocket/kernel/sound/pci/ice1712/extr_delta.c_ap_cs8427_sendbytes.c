
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {int gpio_mutex; } ;
struct snd_i2c_device {int addr; TYPE_1__* bus; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;


 int ap_cs8427_codec_deassert (struct snd_ice1712*,unsigned char) ;
 unsigned char ap_cs8427_codec_select (struct snd_ice1712*) ;
 int ap_cs8427_write_byte (struct snd_ice1712*,int,unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ap_cs8427_sendbytes(struct snd_i2c_device *device, unsigned char *bytes, int count)
{
 struct snd_ice1712 *ice = device->bus->private_data;
 int res = count;
 unsigned char tmp;

 mutex_lock(&ice->gpio_mutex);
 tmp = ap_cs8427_codec_select(ice);
 ap_cs8427_write_byte(ice, (device->addr << 1) | 0, tmp);
 while (count-- > 0)
  ap_cs8427_write_byte(ice, *bytes++, tmp);
 ap_cs8427_codec_deassert(ice, tmp);
 mutex_unlock(&ice->gpio_mutex);
 return res;
}
