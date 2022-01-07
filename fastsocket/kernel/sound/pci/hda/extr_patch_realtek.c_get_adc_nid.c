
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int* dyn_adc_idx; int * adc_nids; scalar_t__ dyn_adc_switch; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;



__attribute__((used)) static hda_nid_t get_adc_nid(struct hda_codec *codec, int adc_idx, int imux_idx)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->dyn_adc_switch)
  adc_idx = spec->dyn_adc_idx[imux_idx];
 return spec->adc_nids[adc_idx];
}
