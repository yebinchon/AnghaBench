
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; int ext_id; int subsystem_vendor; int subsystem_device; scalar_t__ pci; scalar_t__* rates; int * build_ops; } ;


 int AC97_CM9739_MULTI_CHAN ;
 int AC97_CM9739_SPDIF_CTRL ;
 unsigned short AC97_EA_SPCV ;
 int AC97_EI_SPDIF ;
 int AC97_EXTENDED_STATUS ;
 int AC97_HAS_NO_MASTER_VOL ;
 int AC97_HAS_NO_PCM_VOL ;
 int AC97_MASTER ;
 int AC97_PCM ;
 size_t AC97_RATES_SPDIF ;
 scalar_t__ SNDRV_PCM_RATE_48000 ;
 int patch_cm9739_ops ;
 int snd_ac97_read (struct snd_ac97*,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_cm9739(struct snd_ac97 * ac97)
{
 unsigned short val;

 ac97->build_ops = &patch_cm9739_ops;


 ac97->flags |= AC97_HAS_NO_MASTER_VOL | AC97_HAS_NO_PCM_VOL;
 snd_ac97_write_cache(ac97, AC97_MASTER, 0x8000);
 snd_ac97_write_cache(ac97, AC97_PCM, 0x8000);


 val = snd_ac97_read(ac97, AC97_EXTENDED_STATUS);
 if (val & AC97_EA_SPCV) {

  snd_ac97_write_cache(ac97, AC97_CM9739_SPDIF_CTRL,
         snd_ac97_read(ac97, AC97_CM9739_SPDIF_CTRL) | 0x01);
  ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_48000;
 } else {
  ac97->ext_id &= ~AC97_EI_SPDIF;
  ac97->rates[AC97_RATES_SPDIF] = 0;
 }
 val = snd_ac97_read(ac97, AC97_CM9739_MULTI_CHAN) & (1 << 4);
 val |= (1 << 3);
 val |= (1 << 13);
 if (! (ac97->ext_id & AC97_EI_SPDIF))
  val |= (1 << 14);
 snd_ac97_write_cache(ac97, AC97_CM9739_MULTI_CHAN, val);


 snd_ac97_write_cache(ac97, 0x70, 0x0100);
 snd_ac97_write_cache(ac97, 0x72, 0x0020);

 if (ac97->pci &&
      ac97->subsystem_vendor == 0x1043 &&
      ac97->subsystem_device == 0x1843) {
  snd_ac97_write_cache(ac97, AC97_CM9739_SPDIF_CTRL,
   snd_ac97_read(ac97, AC97_CM9739_SPDIF_CTRL) & ~0x01);
  snd_ac97_write_cache(ac97, AC97_CM9739_MULTI_CHAN,
   snd_ac97_read(ac97, AC97_CM9739_MULTI_CHAN) | (1 << 14));
 }

 return 0;
}
