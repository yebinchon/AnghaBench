
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int card; } ;
struct snd_info_entry {int dummy; } ;


 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct vx_core*,int ) ;
 int vx_proc_read ;

__attribute__((used)) static void vx_proc_init(struct vx_core *chip)
{
 struct snd_info_entry *entry;

 if (! snd_card_proc_new(chip->card, "vx-status", &entry))
  snd_info_set_text_ops(entry, chip, vx_proc_read);
}
