
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int dummy; } ;
struct ak4114 {int card; } ;


 int snd_ak4114_proc_regs_read ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct ak4114*,int ) ;

__attribute__((used)) static void snd_ak4114_proc_init(struct ak4114 *ak4114)
{
 struct snd_info_entry *entry;
 if (!snd_card_proc_new(ak4114->card, "ak4114", &entry))
  snd_info_set_text_ops(entry, ak4114, snd_ak4114_proc_regs_read);
}
