
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;


 int AK4358_ADDR ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_vt1724_write_i2c (struct snd_ice1712*,int ,unsigned char,unsigned char) ;

__attribute__((used)) static void juli_akm_write(struct snd_akm4xxx *ak, int chip,
      unsigned char addr, unsigned char data)
{
 struct snd_ice1712 *ice = ak->private_data[0];

 if (snd_BUG_ON(chip))
  return;
 snd_vt1724_write_i2c(ice, AK4358_ADDR, addr, data);
}
