
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int dummy; } ;
struct snd_ice1712 {int card; } ;


 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_ice1712*,int ) ;
 int stac9460_proc_regs_read ;

__attribute__((used)) static void stac9460_proc_init(struct snd_ice1712 *ice)
{
 struct snd_info_entry *entry;
 if (!snd_card_proc_new(ice->card, "stac9460_codec", &entry))
  snd_info_set_text_ops(entry, ice, stac9460_proc_regs_read);
}
