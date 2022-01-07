
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {scalar_t__ vendor_nid; } ;


 scalar_t__ CS420X_VENDOR_NID ;
 int CS_DMIC1_PIN_NID ;
 int CS_DMIC2_PIN_NID ;
 int IDX_BEEP_CFG ;
 unsigned int cs_vendor_coef_get (struct hda_codec*,int ) ;
 int cs_vendor_coef_set (struct hda_codec*,int ,unsigned int) ;
 scalar_t__ is_active_pin (struct hda_codec*,int ) ;

__attribute__((used)) static void init_input_coef(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 unsigned int coef;


 if (spec->vendor_nid == CS420X_VENDOR_NID) {
  coef = cs_vendor_coef_get(codec, IDX_BEEP_CFG);
  if (is_active_pin(codec, CS_DMIC2_PIN_NID))
   coef |= 1 << 4;
  if (is_active_pin(codec, CS_DMIC1_PIN_NID))
   coef |= 1 << 3;




  cs_vendor_coef_set(codec, IDX_BEEP_CFG, coef);
 }
}
