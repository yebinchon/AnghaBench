
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev_flags; } ;
struct snd_ac97 {int flags; TYPE_1__ spec; int * build_ops; } ;


 int AC97_ALC650_LFE_DAC_VOL ;
 int AC97_ALC650_MULTICH ;
 int AC97_ALC650_SURR_DAC_VOL ;
 int AC97_HAS_8CH ;
 int AC97_INT_PAGING ;
 int AC97_PAGE_MASK ;
 int AC97_PAGE_VENDOR ;
 int patch_alc850_ops ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_alc850(struct snd_ac97 *ac97)
{
 ac97->build_ops = &patch_alc850_ops;

 ac97->spec.dev_flags = 0;
 ac97->flags |= AC97_HAS_8CH;


 snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, AC97_PAGE_VENDOR);
 snd_ac97_write_cache(ac97, AC97_ALC650_MULTICH, 1<<15);



 snd_ac97_write_cache(ac97, 0x7a, (1<<1)|(1<<4)|(0<<5)|(1<<6)|
        (1<<7)|(0<<12)|(1<<13)|(0<<14));



 snd_ac97_write_cache(ac97, 0x76, (0<<0)|(0<<2)|(1<<4)|(1<<7)|(2<<8)|
        (1<<11)|(0<<12)|(1<<15));


 snd_ac97_write_cache(ac97, AC97_ALC650_SURR_DAC_VOL, 0x0808);
 snd_ac97_write_cache(ac97, AC97_ALC650_LFE_DAC_VOL, 0x0808);
 return 0;
}
