
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_flags; } ;
struct snd_ac97 {int id; int subsystem_vendor; int subsystem_device; TYPE_1__ spec; int * build_ops; } ;


 int AC97_ALC650_CLOCK ;
 int AC97_ALC650_GPIO_SETUP ;
 int AC97_ALC650_GPIO_STATUS ;
 int AC97_ALC650_LFE_DAC_VOL ;
 int AC97_ALC650_MULTICH ;
 int AC97_ALC650_REVISION ;
 int AC97_ALC650_SURR_DAC_VOL ;
 int patch_alc650_ops ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_alc650(struct snd_ac97 * ac97)
{
 unsigned short val;

 ac97->build_ops = &patch_alc650_ops;


 val = snd_ac97_read(ac97, AC97_ALC650_REVISION) & 0x3f;
 if (val < 3)
  ac97->id = 0x414c4720;
 else if (val < 0x10)
  ac97->id = 0x414c4721;
 else if (val < 0x20)
  ac97->id = 0x414c4722;
 else if (val < 0x30)
  ac97->id = 0x414c4723;



 ac97->spec.dev_flags = (ac97->id == 0x414c4722 ||
    ac97->id == 0x414c4723);


 snd_ac97_write_cache(ac97, AC97_ALC650_GPIO_STATUS,
  snd_ac97_read(ac97, AC97_ALC650_GPIO_STATUS) | 0x8000);


 val = snd_ac97_read(ac97, AC97_ALC650_CLOCK);

 if (ac97->spec.dev_flags &&

     ! (ac97->subsystem_vendor == 0x1043 &&
        ac97->subsystem_device == 0x1103))
  val |= 0x03;
 else
  val &= ~0x03;
 snd_ac97_write_cache(ac97, AC97_ALC650_CLOCK, val);






 snd_ac97_write_cache(ac97, AC97_ALC650_MULTICH, 0);



 snd_ac97_write_cache(ac97, AC97_ALC650_GPIO_SETUP,
        snd_ac97_read(ac97, AC97_ALC650_GPIO_SETUP) | 0x01);
 snd_ac97_write_cache(ac97, AC97_ALC650_GPIO_STATUS,
        (snd_ac97_read(ac97, AC97_ALC650_GPIO_STATUS) | 0x100) & ~0x10);


 snd_ac97_write_cache(ac97, AC97_ALC650_SURR_DAC_VOL, 0x0808);
 snd_ac97_write_cache(ac97, AC97_ALC650_LFE_DAC_VOL, 0x0808);
 return 0;
}
