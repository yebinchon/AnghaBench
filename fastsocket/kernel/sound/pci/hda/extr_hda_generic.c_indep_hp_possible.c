
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct auto_pin_cfg {scalar_t__ line_out_type; int line_outs; int speaker_outs; } ;
struct hda_gen_spec {int* out_paths; int* hp_paths; int* speaker_paths; int mixer_nid; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ is_nid_contained (struct nid_path*,int ) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static bool indep_hp_possible(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 struct nid_path *path;
 int i, idx;

 if (cfg->line_out_type == AUTO_PIN_HP_OUT)
  idx = spec->out_paths[0];
 else
  idx = spec->hp_paths[0];
 path = snd_hda_get_path_from_idx(codec, idx);
 if (!path)
  return 0;


 if (!spec->mixer_nid || !is_nid_contained(path, spec->mixer_nid))
  return 1;


 for (i = 0; i < cfg->line_outs; i++) {
  if (spec->out_paths[i] == idx)
   break;
  path = snd_hda_get_path_from_idx(codec, spec->out_paths[i]);
  if (path && is_nid_contained(path, spec->mixer_nid))
   return 0;
 }
 for (i = 0; i < cfg->speaker_outs; i++) {
  path = snd_hda_get_path_from_idx(codec, spec->speaker_paths[i]);
  if (path && is_nid_contained(path, spec->mixer_nid))
   return 0;
 }

 return 1;
}
