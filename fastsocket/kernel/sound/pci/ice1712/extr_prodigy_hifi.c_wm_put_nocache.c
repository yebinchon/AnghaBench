
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int WM_DEV ;
 int snd_vt1724_write_i2c (struct snd_ice1712*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static void wm_put_nocache(struct snd_ice1712 *ice, int reg, unsigned short val)
{
 unsigned short cval;
 cval = (reg << 9) | val;
 snd_vt1724_write_i2c(ice, WM_DEV, cval >> 8, cval & 0xff);
}
