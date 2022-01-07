
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int INTEL_EN_ALL_PIN_CVTS ;
 int INTEL_GET_VENDOR_VERB ;
 int INTEL_SET_VENDOR_VERB ;
 int INTEL_VENDOR_NID ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_hda_codec_update_widgets (struct hda_codec*) ;

__attribute__((used)) static void intel_haswell_enable_all_pins(struct hda_codec *codec,
       bool update_tree)
{
 unsigned int vendor_param;

 vendor_param = snd_hda_codec_read(codec, INTEL_VENDOR_NID, 0,
    INTEL_GET_VENDOR_VERB, 0);
 if (vendor_param == -1 || vendor_param & INTEL_EN_ALL_PIN_CVTS)
  return;

 vendor_param |= INTEL_EN_ALL_PIN_CVTS;
 vendor_param = snd_hda_codec_read(codec, INTEL_VENDOR_NID, 0,
    INTEL_SET_VENDOR_VERB, vendor_param);
 if (vendor_param == -1)
  return;

 if (update_tree)
  snd_hda_codec_update_widgets(codec);
}
