
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int __snd_gf1_ctrl_stop (struct snd_gus_card*,unsigned char) ;

void snd_gf1_ctrl_stop(struct snd_gus_card * gus, unsigned char reg)
{
 __snd_gf1_ctrl_stop(gus, reg);
}
