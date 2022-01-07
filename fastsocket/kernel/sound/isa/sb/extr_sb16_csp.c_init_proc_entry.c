
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb_csp {TYPE_1__* chip; } ;
struct snd_info_entry {int dummy; } ;
struct TYPE_2__ {int card; } ;


 int info_read ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_sb_csp*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int init_proc_entry(struct snd_sb_csp * p, int device)
{
 char name[16];
 struct snd_info_entry *entry;
 sprintf(name, "cspD%d", device);
 if (! snd_card_proc_new(p->chip->card, name, &entry))
  snd_info_set_text_ops(entry, p, info_read);
 return 0;
}
