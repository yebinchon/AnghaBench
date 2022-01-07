
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sw_kctl; } ;
struct hda_gen_spec {TYPE_2__ vmaster_mute; scalar_t__ auto_mute_via_amp; int (* automute_hook ) (struct hda_codec*) ;} ;
struct hda_codec {TYPE_1__* bus; struct hda_gen_spec* spec; } ;
struct TYPE_3__ {int shutdown; } ;


 int snd_ctl_sync_vmaster (int ,int) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void call_update_outputs(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->automute_hook)
  spec->automute_hook(codec);
 else
  snd_hda_gen_update_outputs(codec);


 if (spec->auto_mute_via_amp && !codec->bus->shutdown)
  snd_ctl_sync_vmaster(spec->vmaster_mute.sw_kctl, 0);
}
