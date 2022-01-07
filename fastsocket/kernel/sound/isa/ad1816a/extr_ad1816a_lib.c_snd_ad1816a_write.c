
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;


 int AD1816A_INDIR_ADDR ;
 int AD1816A_INDIR_DATA_HIGH ;
 int AD1816A_INDIR_DATA_LOW ;
 int snd_ad1816a_out (struct snd_ad1816a*,int ,unsigned short) ;

__attribute__((used)) static void snd_ad1816a_write(struct snd_ad1816a *chip, unsigned char reg,
         unsigned short value)
{
 snd_ad1816a_out(chip, AD1816A_INDIR_ADDR, reg & 0x3f);
 snd_ad1816a_out(chip, AD1816A_INDIR_DATA_LOW, value & 0xff);
 snd_ad1816a_out(chip, AD1816A_INDIR_DATA_HIGH, (value >> 8) & 0xff);
}
