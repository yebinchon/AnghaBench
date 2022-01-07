
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write; } ;
struct TYPE_4__ {TYPE_1__ text; } ;
struct snd_info_entry {TYPE_2__ c; int mode; } ;
struct snd_ice1712 {int card; } ;


 int S_IWUSR ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_ice1712*,int ) ;
 int wm_proc_regs_read ;
 int wm_proc_regs_write ;

__attribute__((used)) static void wm_proc_init(struct snd_ice1712 *ice)
{
 struct snd_info_entry *entry;
 if (! snd_card_proc_new(ice->card, "wm_codec", &entry)) {
  snd_info_set_text_ops(entry, ice, wm_proc_regs_read);
  entry->mode |= S_IWUSR;
  entry->c.text.write = wm_proc_regs_write;
 }
}
