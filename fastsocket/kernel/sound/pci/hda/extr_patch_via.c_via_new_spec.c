
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int indep_hp; int keep_eapd_on; int pcm_playback_hook; } ;
struct via_spec {scalar_t__ codec_type; int no_pin_power_ctl; TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;


 int GFP_KERNEL ;
 scalar_t__ VT1708BCE ;
 scalar_t__ VT1708S ;
 scalar_t__ get_codec_type (struct hda_codec*) ;
 struct via_spec* kzalloc (int,int ) ;
 int snd_hda_gen_spec_init (TYPE_1__*) ;
 int via_playback_pcm_hook ;

__attribute__((used)) static struct via_spec *via_new_spec(struct hda_codec *codec)
{
 struct via_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (spec == ((void*)0))
  return ((void*)0);

 codec->spec = spec;
 snd_hda_gen_spec_init(&spec->gen);
 spec->codec_type = get_codec_type(codec);

 if (spec->codec_type == VT1708BCE)
  spec->codec_type = VT1708S;
 spec->no_pin_power_ctl = 1;
 spec->gen.indep_hp = 1;
 spec->gen.keep_eapd_on = 1;
 spec->gen.pcm_playback_hook = via_playback_pcm_hook;
 return spec;
}
