
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {int dummy; } ;
struct hda_codec {int addr; TYPE_1__* bus; } ;
typedef int name ;
struct TYPE_2__ {int card; } ;


 int print_codec_info ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct hda_codec*,int ) ;
 int snprintf (char*,int,char*,int) ;

int snd_hda_codec_proc_new(struct hda_codec *codec)
{
 char name[32];
 struct snd_info_entry *entry;
 int err;

 snprintf(name, sizeof(name), "codec#%d", codec->addr);
 err = snd_card_proc_new(codec->bus->card, name, &entry);
 if (err < 0)
  return err;

 snd_info_set_text_ops(entry, codec, print_codec_info);
 return 0;
}
