
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;

__attribute__((used)) static void revo_i2c_stop(struct snd_i2c_bus *bus)
{
 struct snd_ice1712 *ice = bus->private_data;
 snd_ice1712_restore_gpio_status(ice);
}
