
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ac97 {int ext_id; int page_mutex; } ;


 int AC97_EI_REV_23 ;
 int AC97_EI_REV_MASK ;
 int AC97_INT_PAGING ;
 int AC97_PAGE_MASK ;
 int mutex_lock (int *) ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,unsigned short) ;

__attribute__((used)) static int snd_ac97_page_save(struct snd_ac97 *ac97, int reg, struct snd_kcontrol *kcontrol)
{
 int page_save = -1;
 if ((kcontrol->private_value & (1<<25)) &&
     (ac97->ext_id & AC97_EI_REV_MASK) >= AC97_EI_REV_23 &&
     (reg >= 0x60 && reg < 0x70)) {
  unsigned short page = (kcontrol->private_value >> 26) & 0x0f;
  mutex_lock(&ac97->page_mutex);
  page_save = snd_ac97_read(ac97, AC97_INT_PAGING) & AC97_PAGE_MASK;
  snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page);
 }
 return page_save;
}
