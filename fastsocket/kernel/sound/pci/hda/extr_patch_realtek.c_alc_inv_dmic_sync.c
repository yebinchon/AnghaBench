
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int num_adc_nids; scalar_t__* imux_pins; size_t* cur_mux; scalar_t__ dyn_adc_switch; } ;
struct alc_spec {scalar_t__ inv_dmic_pin; TYPE_1__ gen; scalar_t__ inv_dmic_muted; int inv_dmic_fixup; } ;


 int alc_inv_dmic_sync_adc (struct hda_codec*,int) ;

__attribute__((used)) static void alc_inv_dmic_sync(struct hda_codec *codec, bool force)
{
 struct alc_spec *spec = codec->spec;
 int src, nums;

 if (!spec->inv_dmic_fixup)
  return;
 if (!spec->inv_dmic_muted && !force)
  return;
 nums = spec->gen.dyn_adc_switch ? 1 : spec->gen.num_adc_nids;
 for (src = 0; src < nums; src++) {
  bool dmic_fixup = 0;

  if (spec->inv_dmic_muted &&
      spec->gen.imux_pins[spec->gen.cur_mux[src]] == spec->inv_dmic_pin)
   dmic_fixup = 1;
  if (!dmic_fixup && !force)
   continue;
  alc_inv_dmic_sync_adc(codec, src);
 }
}
