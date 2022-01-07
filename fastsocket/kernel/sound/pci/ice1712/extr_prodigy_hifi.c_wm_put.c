
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {TYPE_1__* akm; } ;
struct TYPE_2__ {unsigned short* images; } ;


 int wm_put_nocache (struct snd_ice1712*,int,unsigned short) ;

__attribute__((used)) static void wm_put(struct snd_ice1712 *ice, int reg, unsigned short val)
{
 wm_put_nocache(ice, reg, val);
 reg <<= 1;
 ice->akm[0].images[reg] = val >> 8;
 ice->akm[0].images[reg + 1] = val;
}
