
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hda_hint {int key; } ;
struct TYPE_3__ {int used; } ;
struct hda_codec {TYPE_1__ user_pins; TYPE_1__ hints; TYPE_1__ init_verbs; } ;


 int kfree (int ) ;
 struct hda_hint* snd_array_elem (TYPE_1__*,int) ;
 int snd_array_free (TYPE_1__*) ;

__attribute__((used)) static void clear_hwdep_elements(struct hda_codec *codec)
{
 int i;


 snd_array_free(&codec->init_verbs);

 for (i = 0; i < codec->hints.used; i++) {
  struct hda_hint *hint = snd_array_elem(&codec->hints, i);
  kfree(hint->key);
 }
 snd_array_free(&codec->hints);
 snd_array_free(&codec->user_pins);
}
