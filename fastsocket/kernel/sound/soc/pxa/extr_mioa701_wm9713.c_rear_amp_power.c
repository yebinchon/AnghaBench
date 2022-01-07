
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int AC97_GPIO_CFG ;
 int AC97_GPIO_PULL ;
 unsigned short snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned short) ;

__attribute__((used)) static int rear_amp_power(struct snd_soc_codec *codec, int power)
{
 unsigned short reg;

 if (power) {
  reg = snd_soc_read(codec, AC97_GPIO_CFG);
  snd_soc_write(codec, AC97_GPIO_CFG, reg | 0x0100);
  reg = snd_soc_read(codec, AC97_GPIO_PULL);
  snd_soc_write(codec, AC97_GPIO_PULL, reg | (1<<15));
 } else {
  reg = snd_soc_read(codec, AC97_GPIO_CFG);
  snd_soc_write(codec, AC97_GPIO_CFG, reg & ~0x0100);
  reg = snd_soc_read(codec, AC97_GPIO_PULL);
  snd_soc_write(codec, AC97_GPIO_PULL, reg & ~(1<<15));
 }

 return 0;
}
