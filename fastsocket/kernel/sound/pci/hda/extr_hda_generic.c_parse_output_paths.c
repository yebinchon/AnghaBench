
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct auto_pin_cfg {scalar_t__ line_out_type; scalar_t__ speaker_outs; scalar_t__ hp_outs; scalar_t__ line_outs; scalar_t__* speaker_pins; scalar_t__* hp_pins; scalar_t__* line_out_pins; } ;
struct hda_gen_spec {scalar_t__ indep_hp; scalar_t__ prefer_hp_amp; int vmaster_tlv; int vmaster_nid; int * out_paths; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HDA_OUTPUT ;
 int INT_MAX ;
 unsigned int PIN_HP ;
 unsigned int PIN_OUT ;
 int debug_badness (char*,...) ;
 int debug_show_configs (struct hda_codec*,struct auto_pin_cfg*) ;
 int fill_and_eval_dacs (struct hda_codec*,int,int) ;
 int indep_hp_possible (struct hda_codec*) ;
 int kfree (struct auto_pin_cfg*) ;
 struct auto_pin_cfg* kmalloc (int,int ) ;
 int look_for_out_vol_nid (struct hda_codec*,struct nid_path*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int set_pin_targets (struct hda_codec*,scalar_t__,scalar_t__*,unsigned int) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int ) ;
 int snd_hda_set_vmaster_tlv (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int parse_output_paths(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 struct auto_pin_cfg *best_cfg;
 unsigned int val;
 int best_badness = INT_MAX;
 int badness;
 bool fill_hardwired = 1, fill_mio_first = 1;
 bool best_wired = 1, best_mio = 1;
 bool hp_spk_swapped = 0;

 best_cfg = kmalloc(sizeof(*best_cfg), GFP_KERNEL);
 if (!best_cfg)
  return -ENOMEM;
 *best_cfg = *cfg;

 for (;;) {
  badness = fill_and_eval_dacs(codec, fill_hardwired,
          fill_mio_first);
  if (badness < 0) {
   kfree(best_cfg);
   return badness;
  }
  debug_badness("==> lo_type=%d, wired=%d, mio=%d, badness=0x%x\n",
         cfg->line_out_type, fill_hardwired, fill_mio_first,
         badness);
  debug_show_configs(codec, cfg);
  if (badness < best_badness) {
   best_badness = badness;
   *best_cfg = *cfg;
   best_wired = fill_hardwired;
   best_mio = fill_mio_first;
  }
  if (!badness)
   break;
  fill_mio_first = !fill_mio_first;
  if (!fill_mio_first)
   continue;
  fill_hardwired = !fill_hardwired;
  if (!fill_hardwired)
   continue;
  if (hp_spk_swapped)
   break;
  hp_spk_swapped = 1;
  if (cfg->speaker_outs > 0 &&
      cfg->line_out_type == AUTO_PIN_HP_OUT) {
   cfg->hp_outs = cfg->line_outs;
   memcpy(cfg->hp_pins, cfg->line_out_pins,
          sizeof(cfg->hp_pins));
   cfg->line_outs = cfg->speaker_outs;
   memcpy(cfg->line_out_pins, cfg->speaker_pins,
          sizeof(cfg->speaker_pins));
   cfg->speaker_outs = 0;
   memset(cfg->speaker_pins, 0, sizeof(cfg->speaker_pins));
   cfg->line_out_type = AUTO_PIN_SPEAKER_OUT;
   fill_hardwired = 1;
   continue;
  }
  if (cfg->hp_outs > 0 &&
      cfg->line_out_type == AUTO_PIN_SPEAKER_OUT) {
   cfg->speaker_outs = cfg->line_outs;
   memcpy(cfg->speaker_pins, cfg->line_out_pins,
          sizeof(cfg->speaker_pins));
   cfg->line_outs = cfg->hp_outs;
   memcpy(cfg->line_out_pins, cfg->hp_pins,
          sizeof(cfg->hp_pins));
   cfg->hp_outs = 0;
   memset(cfg->hp_pins, 0, sizeof(cfg->hp_pins));
   cfg->line_out_type = AUTO_PIN_HP_OUT;
   fill_hardwired = 1;
   continue;
  }
  break;
 }

 if (badness) {
  debug_badness("==> restoring best_cfg\n");
  *cfg = *best_cfg;
  fill_and_eval_dacs(codec, best_wired, best_mio);
 }
 debug_badness("==> Best config: lo_type=%d, wired=%d, mio=%d\n",
        cfg->line_out_type, best_wired, best_mio);
 debug_show_configs(codec, cfg);

 if (cfg->line_out_pins[0]) {
  struct nid_path *path;
  path = snd_hda_get_path_from_idx(codec, spec->out_paths[0]);
  if (path)
   spec->vmaster_nid = look_for_out_vol_nid(codec, path);
  if (spec->vmaster_nid)
   snd_hda_set_vmaster_tlv(codec, spec->vmaster_nid,
      HDA_OUTPUT, spec->vmaster_tlv);
 }


 if (spec->prefer_hp_amp || cfg->line_out_type == AUTO_PIN_HP_OUT)
  val = PIN_HP;
 else
  val = PIN_OUT;
 set_pin_targets(codec, cfg->line_outs, cfg->line_out_pins, val);
 if (cfg->line_out_type != AUTO_PIN_HP_OUT)
  set_pin_targets(codec, cfg->hp_outs, cfg->hp_pins, PIN_HP);
 if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
  val = spec->prefer_hp_amp ? PIN_HP : PIN_OUT;
  set_pin_targets(codec, cfg->speaker_outs,
    cfg->speaker_pins, val);
 }


 if (spec->indep_hp && !indep_hp_possible(codec))
  spec->indep_hp = 0;

 kfree(best_cfg);
 return 0;
}
