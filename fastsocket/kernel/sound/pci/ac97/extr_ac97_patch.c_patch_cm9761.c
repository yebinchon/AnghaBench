
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short dev_flags; } ;
struct snd_ac97 {scalar_t__ id; TYPE_1__ spec; int * rates; int ext_id; int * build_ops; int flags; } ;


 int AC97_CM9761_MULTI_CHAN ;
 int AC97_CM9761_SPDIF_CTRL ;
 int AC97_EI_SPDIF ;
 int AC97_EXTENDED_STATUS ;
 int AC97_HAS_NO_PCM_VOL ;
 scalar_t__ AC97_ID_CM9761_82 ;
 scalar_t__ AC97_ID_CM9761_83 ;
 int AC97_INT_PAGING ;
 int AC97_MASTER ;
 int AC97_PCM ;
 size_t AC97_RATES_SPDIF ;
 int SNDRV_PCM_RATE_48000 ;
 int patch_cm9761_ops ;
 unsigned short snd_ac97_read (struct snd_ac97*,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_cm9761(struct snd_ac97 *ac97)
{
 unsigned short val;





 ac97->flags |= AC97_HAS_NO_PCM_VOL;
 snd_ac97_write_cache(ac97, AC97_MASTER, 0x8808);
 snd_ac97_write_cache(ac97, AC97_PCM, 0x8808);

 ac97->spec.dev_flags = 0;
 if (ac97->id == AC97_ID_CM9761_82) {
  unsigned short tmp;

  val = snd_ac97_read(ac97, AC97_INT_PAGING);
  snd_ac97_write_cache(ac97, AC97_INT_PAGING, (val & ~0x0f) | 0x01);
  tmp = snd_ac97_read(ac97, 0x60);
  ac97->spec.dev_flags = tmp & 1;
  snd_ac97_write_cache(ac97, AC97_INT_PAGING, val);
 } else if (ac97->id == AC97_ID_CM9761_83)
  ac97->spec.dev_flags = 2;

 ac97->build_ops = &patch_cm9761_ops;



        ac97->ext_id |= AC97_EI_SPDIF;

 snd_ac97_write_cache(ac97, AC97_EXTENDED_STATUS, 0x05c0);

 snd_ac97_write_cache(ac97, AC97_CM9761_SPDIF_CTRL, 0x0001);
 ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_48000;
 val = snd_ac97_read(ac97, AC97_CM9761_MULTI_CHAN);
 val |= (1 << 4);
 snd_ac97_write_cache(ac97, AC97_CM9761_MULTI_CHAN, val);


 snd_ac97_write_cache(ac97, 0x70, 0x0100);
 snd_ac97_write_cache(ac97, 0x72, 0x0020);

 return 0;
}
