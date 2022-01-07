
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enh_mode; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int SNDRV_GF1_VB_UPPER_ADDRESS ;
 scalar_t__ __snd_gf1_look16 (struct snd_gus_card*,unsigned char) ;
 scalar_t__ __snd_gf1_look8 (struct snd_gus_card*,int) ;

__attribute__((used)) static inline unsigned int __snd_gf1_read_addr(struct snd_gus_card * gus,
            unsigned char reg, short w_16bit)
{
 unsigned int res;

 res = ((unsigned int) __snd_gf1_look16(gus, reg | 0x80) << 11) & 0xfff800;
 res |= ((unsigned int) __snd_gf1_look16(gus, (reg + 1) | 0x80) >> 5) & 0x0007ff;
 if (gus->gf1.enh_mode) {
  res |= (unsigned int) __snd_gf1_look8(gus, SNDRV_GF1_VB_UPPER_ADDRESS | 0x80) << 26;
  if (w_16bit)
   res = ((res << 1) & 0xffffffe0) | (res & 0x0000000f);
 } else if (w_16bit)
  res = ((res & 0x001ffff0) << 1) | (res & 0x00c0000f);
 return res;
}
