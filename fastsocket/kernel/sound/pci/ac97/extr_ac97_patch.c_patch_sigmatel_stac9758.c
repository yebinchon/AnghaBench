
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int subsystem_vendor; int subsystem_device; int flags; int * build_ops; scalar_t__ pci; } ;


 int AC97_INT_PAGING ;
 int AC97_PAGE_MASK ;
 int AC97_PAGE_VENDOR ;




 int AC97_STEREO_MUTES ;
 int patch_sigmatel_stac9758_ops ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,unsigned short,unsigned short) ;

__attribute__((used)) static int patch_sigmatel_stac9758(struct snd_ac97 * ac97)
{
 static unsigned short regs[4] = {
  129,
  130,
  131,
  128
 };
 static unsigned short def_regs[4] = {
               0xd794,
               0x2001,
              0x0201,
                0x0040
 };
 static unsigned short m675_regs[4] = {
               0xfc70,
               0x2102,
              0x0203,
                0x0041
 };
 unsigned short *pregs = def_regs;
 int i;


 if (ac97->pci &&
     ac97->subsystem_vendor == 0x107b &&
     ac97->subsystem_device == 0x0601)
      pregs = m675_regs;


 ac97->build_ops = &patch_sigmatel_stac9758_ops;

 snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, AC97_PAGE_VENDOR);
 for (i = 0; i < 4; i++)
  snd_ac97_write_cache(ac97, regs[i], pregs[i]);

 ac97->flags |= AC97_STEREO_MUTES;
 return 0;
}
