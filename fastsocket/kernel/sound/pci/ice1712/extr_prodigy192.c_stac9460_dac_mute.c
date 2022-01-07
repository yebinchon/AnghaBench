
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned char stac9460_get (struct snd_ice1712*,int) ;
 int stac9460_put (struct snd_ice1712*,int,unsigned char) ;

__attribute__((used)) static int stac9460_dac_mute(struct snd_ice1712 *ice, int idx,
  unsigned char mute)
{
 unsigned char new, old;
 int change;
 old = stac9460_get(ice, idx);
 new = (~mute << 7 & 0x80) | (old & ~0x80);
 change = (new != old);
 if (change)

  stac9460_put(ice, idx, new);
 return change;
}
