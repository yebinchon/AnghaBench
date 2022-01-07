
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hda_jack_tbl {TYPE_2__* kctl; } ;
struct TYPE_6__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_3__ jacktbl; } ;
struct TYPE_4__ {int index; scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ id; } ;


 int strcmp (char*,scalar_t__) ;
 int strlen (char const*) ;
 int strncmp (char const*,scalar_t__,int) ;

__attribute__((used)) static int get_unique_index(struct hda_codec *codec, const char *name, int idx)
{
 struct hda_jack_tbl *jack;
 int i, len = strlen(name);
 again:
 jack = codec->jacktbl.list;
 for (i = 0; i < codec->jacktbl.used; i++, jack++) {

  if (jack->kctl &&
      !strncmp(name, jack->kctl->id.name, len) &&
      !strcmp(" Jack", jack->kctl->id.name + len) &&
      jack->kctl->id.index == idx) {
   idx++;
   goto again;
  }
 }
 return idx;
}
