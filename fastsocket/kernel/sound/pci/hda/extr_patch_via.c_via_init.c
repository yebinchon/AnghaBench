
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_spec {int num_iverbs; int * init_verbs; } ;
struct hda_codec {struct via_spec* spec; } ;


 int __analog_low_current_mode (struct hda_codec*,int) ;
 int set_widgets_power_state (struct hda_codec*) ;
 int snd_hda_gen_init (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;
 int vt1708_update_hp_work (struct hda_codec*) ;

__attribute__((used)) static int via_init(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->num_iverbs; i++)
  snd_hda_sequence_write(codec, spec->init_verbs[i]);


 set_widgets_power_state(codec);
 __analog_low_current_mode(codec, 1);

 snd_hda_gen_init(codec);

 vt1708_update_hp_work(codec);

 return 0;
}
