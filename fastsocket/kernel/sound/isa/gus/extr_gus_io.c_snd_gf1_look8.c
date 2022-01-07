
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 unsigned char __snd_gf1_look8 (struct snd_gus_card*,unsigned char) ;

unsigned char snd_gf1_look8(struct snd_gus_card * gus, unsigned char reg)
{
 return __snd_gf1_look8(gus, reg);
}
