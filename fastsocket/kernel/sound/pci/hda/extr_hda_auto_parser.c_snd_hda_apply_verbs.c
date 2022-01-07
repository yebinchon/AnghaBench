
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_verb {int dummy; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ verbs; } ;


 struct hda_verb** snd_array_elem (TYPE_1__*,int) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb*) ;

void snd_hda_apply_verbs(struct hda_codec *codec)
{
 int i;
 for (i = 0; i < codec->verbs.used; i++) {
  struct hda_verb **v = snd_array_elem(&codec->verbs, i);
  snd_hda_sequence_write(codec, *v);
 }
}
