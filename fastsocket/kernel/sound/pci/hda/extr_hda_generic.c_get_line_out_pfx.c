
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hook; } ;
struct TYPE_3__ {int num_dacs; int * extra_out_nid; int * hp_out_nid; } ;
struct auto_pin_cfg {int line_outs; int line_out_type; scalar_t__ speaker_outs; scalar_t__ hp_outs; } ;
struct hda_gen_spec {scalar_t__ multi_ios; int * speaker_paths; int * hp_paths; TYPE_2__ vmaster_mute; TYPE_1__ multiout; int mixer_nid; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ARRAY_SIZE (char const**) ;


 char const** channel_name ;
 int path_has_mixer (struct hda_codec*,int ,int) ;
 int snd_BUG () ;

__attribute__((used)) static const char *get_line_out_pfx(struct hda_codec *codec, int ch,
        int *index, int ctl_type)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;

 *index = 0;
 if (cfg->line_outs == 1 && !spec->multi_ios &&
     !cfg->hp_outs && !cfg->speaker_outs)
  return spec->vmaster_mute.hook ? "PCM" : "Master";




 if (spec->multiout.num_dacs == 1 && !spec->mixer_nid &&
     !spec->multiout.hp_out_nid[0] && !spec->multiout.extra_out_nid[0])
  return spec->vmaster_mute.hook ? "PCM" : "Master";


 if (ch >= cfg->line_outs)
  return channel_name[ch];

 switch (cfg->line_out_type) {
 case 128:



  if (!ch && cfg->hp_outs &&
      !path_has_mixer(codec, spec->hp_paths[0], ctl_type))
   break;
  if (cfg->line_outs == 1)
   return "Speaker";
  if (cfg->line_outs == 2)
   return ch ? "Bass Speaker" : "Speaker";
  break;
 case 129:



  if (!ch && cfg->speaker_outs &&
      !path_has_mixer(codec, spec->speaker_paths[0], ctl_type))
   break;

  if (ch && spec->multi_ios)
   break;
  *index = ch;
  return "Headphone";
 }


 if (cfg->line_outs == 1 && !spec->multi_ios)
  return "PCM";

 if (ch >= ARRAY_SIZE(channel_name)) {
  snd_BUG();
  return "PCM";
 }

 return channel_name[ch];
}
