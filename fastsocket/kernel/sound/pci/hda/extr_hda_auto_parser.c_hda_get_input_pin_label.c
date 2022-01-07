
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct auto_pin_cfg_item {int is_headphone_mic; int is_headset_mic; } ;
typedef int hda_nid_t ;
 int INPUT_PIN_ATTR_DOCK ;
 int get_defcfg_device (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static const char *hda_get_input_pin_label(struct hda_codec *codec,
        const struct auto_pin_cfg_item *item,
        hda_nid_t pin, bool check_location)
{
 unsigned int def_conf;
 static const char * const mic_names[] = {
  "Internal Mic", "Dock Mic", "Mic", "Rear Mic", "Front Mic"
 };
 int attr;

 def_conf = snd_hda_codec_get_pincfg(codec, pin);

 switch (get_defcfg_device(def_conf)) {
 case 129:
  if (item && item->is_headset_mic)
   return "Headset Mic";
  if (item && item->is_headphone_mic)
   return "Headphone Mic";
  if (!check_location)
   return "Mic";
  attr = snd_hda_get_input_pin_attr(def_conf);
  if (!attr)
   return "None";
  return mic_names[attr - 1];
 case 130:
  if (!check_location)
   return "Line";
  attr = snd_hda_get_input_pin_attr(def_conf);
  if (!attr)
   return "None";
  if (attr == INPUT_PIN_ATTR_DOCK)
   return "Dock Line";
  return "Line";
 case 134:
  return "Aux";
 case 133:
  return "CD";
 case 128:
  return "SPDIF In";
 case 132:
  return "Digital In";
 case 131:
  return "Headphone Mic";
 default:
  return "Misc";
 }
}
