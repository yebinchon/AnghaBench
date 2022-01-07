
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_input_mux {int num_items; } ;
struct hda_gen_spec {int num_adc_nids; int* dyn_adc_idx; int dyn_adc_switch; scalar_t__ multi_cap_vol; scalar_t__ hp_mic; scalar_t__** input_paths; int * adc_nids; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int invalidate_nid_path (struct hda_codec*,scalar_t__) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int check_dyn_adc_switch(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct hda_input_mux *imux = &spec->input_mux;
 unsigned int ok_bits;
 int i, n, nums;

 nums = 0;
 ok_bits = 0;
 for (n = 0; n < spec->num_adc_nids; n++) {
  for (i = 0; i < imux->num_items; i++) {
   if (!spec->input_paths[i][n])
    break;
  }
  if (i >= imux->num_items) {
   ok_bits |= (1 << n);
   nums++;
  }
 }

 if (!ok_bits) {

  for (i = 0; i < imux->num_items; i++) {
   for (n = 0; n < spec->num_adc_nids; n++) {
    if (spec->input_paths[i][n]) {
     spec->dyn_adc_idx[i] = n;
     break;
    }
   }
  }

  snd_printdd("hda-codec: enabling ADC switching\n");
  spec->dyn_adc_switch = 1;
 } else if (nums != spec->num_adc_nids) {

  nums = 0;
  for (n = 0; n < spec->num_adc_nids; n++) {
   if (!(ok_bits & (1 << n)))
    continue;
   if (n != nums) {
    spec->adc_nids[nums] = spec->adc_nids[n];
    for (i = 0; i < imux->num_items; i++) {
     invalidate_nid_path(codec,
      spec->input_paths[i][nums]);
     spec->input_paths[i][nums] =
      spec->input_paths[i][n];
    }
   }
   nums++;
  }
  spec->num_adc_nids = nums;
 }

 if (imux->num_items == 1 ||
     (imux->num_items == 2 && spec->hp_mic)) {
  snd_printdd("hda-codec: reducing to a single ADC\n");
  spec->num_adc_nids = 1;
 }


 if (!spec->dyn_adc_switch && spec->multi_cap_vol)
  spec->num_adc_nids = 1;

 return 0;
}
