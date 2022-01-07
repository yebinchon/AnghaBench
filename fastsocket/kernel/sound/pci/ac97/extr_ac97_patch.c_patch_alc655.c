
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_flags; } ;
struct snd_ac97 {scalar_t__ id; int subsystem_vendor; int subsystem_device; int ext_id; TYPE_1__ spec; int * build_ops; } ;


 int AC97_ALC650_LFE_DAC_VOL ;
 int AC97_ALC650_MULTICH ;
 int AC97_ALC650_REVISION ;
 int AC97_ALC650_SURR_DAC_VOL ;
 int AC97_EI_SPDIF ;
 scalar_t__ AC97_ID_ALC658 ;
 scalar_t__ AC97_ID_ALC658D ;
 int AC97_INT_PAGING ;
 int AC97_PAGE_MASK ;
 int AC97_PAGE_VENDOR ;
 int patch_alc655_ops ;
 int snd_ac97_read (struct snd_ac97*,int) ;
 int snd_ac97_update_bits (struct snd_ac97*,int,int,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_alc655(struct snd_ac97 * ac97)
{
 unsigned int val;

 if (ac97->id == AC97_ID_ALC658) {
  ac97->spec.dev_flags = 1;
  if ((snd_ac97_read(ac97, AC97_ALC650_REVISION) & 0x3f) == 2) {
   ac97->id = AC97_ID_ALC658D;
   ac97->spec.dev_flags = 2;
  }
 }

 ac97->build_ops = &patch_alc655_ops;


 snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, AC97_PAGE_VENDOR);


 val = snd_ac97_read(ac97, 0x7a);
 if (ac97->spec.dev_flags)
  val &= ~(1 << 1);
 else {
  if (ac97->subsystem_vendor == 0x1462 &&
      (ac97->subsystem_device == 0x0131 ||
       ac97->subsystem_device == 0x0161 ||
       ac97->subsystem_device == 0x0351 ||
       ac97->subsystem_device == 0x0471 ||
       ac97->subsystem_device == 0x0061))
   val &= ~(1 << 1);
  else
   val |= (1 << 1);

  ac97->ext_id |= AC97_EI_SPDIF;
 }
 val &= ~(1 << 12);
 snd_ac97_write_cache(ac97, 0x7a, val);





 snd_ac97_write_cache(ac97, AC97_ALC650_MULTICH, 1<<15);


 snd_ac97_write_cache(ac97, AC97_ALC650_SURR_DAC_VOL, 0x0808);
 snd_ac97_write_cache(ac97, AC97_ALC650_LFE_DAC_VOL, 0x0808);


 if (ac97->id == AC97_ID_ALC658D)
  snd_ac97_update_bits(ac97, 0x74, 0x0800, 0x0800);

 return 0;
}
