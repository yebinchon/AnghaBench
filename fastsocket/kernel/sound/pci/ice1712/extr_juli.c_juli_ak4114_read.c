
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AK4114_ADDR ;
 unsigned char snd_vt1724_read_i2c (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static unsigned char juli_ak4114_read(void *private_data, unsigned char reg)
{
 return snd_vt1724_read_i2c((struct snd_ice1712 *)private_data,
     AK4114_ADDR, reg);
}
