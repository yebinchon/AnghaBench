
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_gen_spec {int* dyn_adc_idx; int ** input_paths; scalar_t__ dyn_adc_switch; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int AUTO_CFG_MAX_INS ;
 int HDA_MAX_NUM_INPUTS ;
 int snd_BUG () ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int ) ;

__attribute__((used)) static struct nid_path *get_input_path(struct hda_codec *codec, int adc_idx, int imux_idx)
{
 struct hda_gen_spec *spec = codec->spec;
 if (imux_idx < 0 || imux_idx >= HDA_MAX_NUM_INPUTS) {
  snd_BUG();
  return ((void*)0);
 }
 if (spec->dyn_adc_switch)
  adc_idx = spec->dyn_adc_idx[imux_idx];
 if (adc_idx < 0 || adc_idx >= AUTO_CFG_MAX_INS) {
  snd_BUG();
  return ((void*)0);
 }
 return snd_hda_get_path_from_idx(codec, spec->input_paths[imux_idx][adc_idx]);
}
