
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_tbl {unsigned char tag; } ;
struct TYPE_2__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_1__ jacktbl; } ;



struct hda_jack_tbl *
snd_hda_jack_tbl_get_from_tag(struct hda_codec *codec, unsigned char tag)
{
 struct hda_jack_tbl *jack = codec->jacktbl.list;
 int i;

 if (!tag || !jack)
  return ((void*)0);
 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->tag == tag)
   return jack;
 return ((void*)0);
}
