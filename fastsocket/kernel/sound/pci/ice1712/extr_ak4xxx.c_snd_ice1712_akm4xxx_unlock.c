
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;


 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;

__attribute__((used)) static void snd_ice1712_akm4xxx_unlock(struct snd_akm4xxx *ak, int chip)
{
 struct snd_ice1712 *ice = ak->private_data[0];

 snd_ice1712_restore_gpio_status(ice);
}
