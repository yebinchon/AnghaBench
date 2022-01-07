
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_nid_item {int kctl; } ;
struct TYPE_4__ {int used; struct hda_nid_item* list; } ;
struct hda_codec {TYPE_2__ nids; TYPE_2__ mixers; TYPE_1__* bus; } ;
struct TYPE_3__ {int card; } ;


 int snd_array_free (TYPE_2__*) ;
 int snd_ctl_remove (int ,int ) ;

void snd_hda_ctls_clear(struct hda_codec *codec)
{
 int i;
 struct hda_nid_item *items = codec->mixers.list;
 for (i = 0; i < codec->mixers.used; i++)
  snd_ctl_remove(codec->bus->card, items[i].kctl);
 snd_array_free(&codec->mixers);
 snd_array_free(&codec->nids);
}
