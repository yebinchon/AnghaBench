
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enh_mode; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int SNDRV_GF1_VB_UPPER_ADDRESS ;
 int __snd_gf1_write16 (struct snd_gus_card*,unsigned char,unsigned short) ;
 int __snd_gf1_write8 (struct snd_gus_card*,int ,unsigned char) ;

__attribute__((used)) static inline void __snd_gf1_write_addr(struct snd_gus_card * gus, unsigned char reg,
                                        unsigned int addr, int w_16bit)
{
 if (gus->gf1.enh_mode) {
  if (w_16bit)
   addr = ((addr >> 1) & ~0x0000000f) | (addr & 0x0000000f);
  __snd_gf1_write8(gus, SNDRV_GF1_VB_UPPER_ADDRESS, (unsigned char) ((addr >> 26) & 0x03));
 } else if (w_16bit)
  addr = (addr & 0x00c0000f) | ((addr & 0x003ffff0) >> 1);
 __snd_gf1_write16(gus, reg, (unsigned short) (addr >> 11));
 __snd_gf1_write16(gus, reg + 1, (unsigned short) (addr << 5));
}
