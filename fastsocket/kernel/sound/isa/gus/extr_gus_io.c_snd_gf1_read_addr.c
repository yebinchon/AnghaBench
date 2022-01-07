
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 unsigned int __snd_gf1_read_addr (struct snd_gus_card*,unsigned char,short) ;

unsigned int snd_gf1_read_addr(struct snd_gus_card * gus,
                               unsigned char reg,
                               short w_16bit)
{
 return __snd_gf1_read_addr(gus, reg, w_16bit);
}
