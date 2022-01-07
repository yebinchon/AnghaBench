
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int base_exit_verbs; int unsol_hp_work; } ;


 int ca0132_exit_chip (struct hda_codec*) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct ca0132_spec*) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static void ca0132_free(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 cancel_delayed_work_sync(&spec->unsol_hp_work);
 snd_hda_power_up(codec);
 snd_hda_sequence_write(codec, spec->base_exit_verbs);
 ca0132_exit_chip(codec);
 snd_hda_power_down(codec);
 kfree(codec->spec);
}
