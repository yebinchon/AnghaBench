
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {int card; } ;
struct snd_info_entry {int dummy; } ;


 int pdacf_proc_read ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_pdacf*,int ) ;

__attribute__((used)) static void pdacf_proc_init(struct snd_pdacf *chip)
{
 struct snd_info_entry *entry;

 if (! snd_card_proc_new(chip->card, "pdaudiocf", &entry))
  snd_info_set_text_ops(entry, chip, pdacf_proc_read);
}
