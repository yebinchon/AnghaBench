
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {TYPE_1__* akm; } ;
struct TYPE_2__ {unsigned short* images; } ;



__attribute__((used)) static unsigned short wm_get(struct snd_ice1712 *ice, int reg)
{
 reg <<= 1;
 return ((unsigned short)ice->akm[0].images[reg] << 8) |
  ice->akm[0].images[reg + 1];
}
