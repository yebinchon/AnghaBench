
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 int ICE1712_EWX2496_SERIAL_CLOCK ;
 int ICE1712_IREG_GPIO_DATA ;
 int snd_ice1712_read (struct snd_ice1712*,int ) ;

__attribute__((used)) static int ewx_i2c_getclock(struct snd_i2c_bus *bus)
{
 struct snd_ice1712 *ice = bus->private_data;
 return snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA) & ICE1712_EWX2496_SERIAL_CLOCK ? 1 : 0;
}
