
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {int type; } ;
 int ak435X_reset (struct snd_akm4xxx*,int,int) ;
 int ak4381_reset (struct snd_akm4xxx*,int) ;
 int ak4524_reset (struct snd_akm4xxx*,int) ;

void snd_akm4xxx_reset(struct snd_akm4xxx *ak, int state)
{
 switch (ak->type) {
 case 130:
 case 129:
  ak4524_reset(ak, state);
  break;
 case 128:

  break;
 case 133:
  ak435X_reset(ak, state, 0x0b);
  break;
 case 132:
  ak435X_reset(ak, state, 0x10);
  break;
 case 131:
  ak4381_reset(ak, state);
  break;
 default:
  break;
 }
}
