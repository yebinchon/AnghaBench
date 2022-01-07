
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hook; scalar_t__ sw_kctl; } ;
struct hda_gen_spec {TYPE_1__ vmaster_mute; int (* init_hook ) (struct hda_codec*) ;} ;
struct hda_codec {int cached_write; struct hda_gen_spec* spec; } ;


 int clear_unsol_on_unused_pins (struct hda_codec*) ;
 int hda_call_check_power_status (struct hda_codec*,int) ;
 int init_analog_input (struct hda_codec*) ;
 int init_digital (struct hda_codec*) ;
 int init_extra_out (struct hda_codec*) ;
 int init_input_src (struct hda_codec*) ;
 int init_multi_io (struct hda_codec*) ;
 int init_multi_out (struct hda_codec*) ;
 int snd_hda_apply_verbs (struct hda_codec*) ;
 int snd_hda_codec_flush_cache (struct hda_codec*) ;
 int snd_hda_sync_vmaster_hook (TYPE_1__*) ;
 int stub1 (struct hda_codec*) ;
 int update_automute_all (struct hda_codec*) ;

int snd_hda_gen_init(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;

 if (spec->init_hook)
  spec->init_hook(codec);

 snd_hda_apply_verbs(codec);

 codec->cached_write = 1;

 init_multi_out(codec);
 init_extra_out(codec);
 init_multi_io(codec);
 init_analog_input(codec);
 init_input_src(codec);
 init_digital(codec);

 clear_unsol_on_unused_pins(codec);


 update_automute_all(codec);

 snd_hda_codec_flush_cache(codec);

 if (spec->vmaster_mute.sw_kctl && spec->vmaster_mute.hook)
  snd_hda_sync_vmaster_hook(&spec->vmaster_mute);

 hda_call_check_power_status(codec, 0x01);
 return 0;
}
