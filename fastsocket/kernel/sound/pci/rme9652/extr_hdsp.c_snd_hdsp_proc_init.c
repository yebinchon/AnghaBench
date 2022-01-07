
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {int dummy; } ;
struct hdsp {int card; } ;


 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_hdsp_proc_read ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct hdsp*,int ) ;

__attribute__((used)) static void snd_hdsp_proc_init(struct hdsp *hdsp)
{
 struct snd_info_entry *entry;

 if (! snd_card_proc_new(hdsp->card, "hdsp", &entry))
  snd_info_set_text_ops(entry, hdsp, snd_hdsp_proc_read);
}
