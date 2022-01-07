
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct prodigy192_spec* spec; } ;
struct prodigy192_spec {int mute_mutex; } ;


 int STAC946X_MASTER_CLOCKING ;
 scalar_t__ STAC946X_MASTER_VOLUME ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned char stac9460_dac_mute (struct snd_ice1712*,scalar_t__,int) ;
 unsigned char stac9460_get (struct snd_ice1712*,int ) ;
 int stac9460_put (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void stac9460_set_rate_val(struct snd_ice1712 *ice, unsigned int rate)
{
 unsigned char old, new;
 int idx;
 unsigned char changed[7];
 struct prodigy192_spec *spec = ice->spec;

 if (rate == 0)
  return;
 else if (rate <= 48000)
  new = 0x08;
 else if (rate <= 96000)
  new = 0x11;
 else
  new = 0x12;
 old = stac9460_get(ice, STAC946X_MASTER_CLOCKING);
 if (old == new)
  return;


 mutex_lock(&spec->mute_mutex);

 for (idx = 0; idx < 7 ; ++idx)
  changed[idx] = stac9460_dac_mute(ice,
    STAC946X_MASTER_VOLUME + idx, 0);

 stac9460_put(ice, STAC946X_MASTER_CLOCKING, new);
 udelay(10);


 for (idx = 0; idx < 7 ; ++idx) {
  if (changed[idx])
   stac9460_dac_mute(ice, STAC946X_MASTER_VOLUME + idx, 1);
 }
 mutex_unlock(&spec->mute_mutex);
}
