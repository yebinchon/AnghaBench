
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {unsigned int num_pwrs; scalar_t__* pwr_nids; unsigned int power_map_bits; } ;
struct hda_codec {int afg; struct sigmatel_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_VERB_IDT_SET_POWER_MAP ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void stac_toggle_power_map(struct hda_codec *codec, hda_nid_t nid,
      bool enable, bool do_write)
{
 struct sigmatel_spec *spec = codec->spec;
 unsigned int idx, val;

 for (idx = 0; idx < spec->num_pwrs; idx++) {
  if (spec->pwr_nids[idx] == nid)
   break;
 }
 if (idx >= spec->num_pwrs)
  return;

 idx = 1 << idx;

 val = spec->power_map_bits;
 if (enable)
  val &= ~idx;
 else
  val |= idx;


 if (val != spec->power_map_bits) {
  spec->power_map_bits = val;
  if (do_write)
   snd_hda_codec_write(codec, codec->afg, 0,
         AC_VERB_IDT_SET_POWER_MAP, val);
 }
}
