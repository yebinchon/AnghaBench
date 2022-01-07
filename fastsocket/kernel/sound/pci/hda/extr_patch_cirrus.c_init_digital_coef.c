
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CS_DIG_OUT2_PIN_NID ;
 int IDX_SPDIF_CTL ;
 int cs_vendor_coef_set (struct hda_codec*,int ,unsigned int) ;
 scalar_t__ is_active_pin (struct hda_codec*,int ) ;

__attribute__((used)) static void init_digital_coef(struct hda_codec *codec)
{
 unsigned int coef;

 coef = 0x0002;
 coef |= 0x0008;
 if (is_active_pin(codec, CS_DIG_OUT2_PIN_NID))
  coef |= 0x4000;



 cs_vendor_coef_set(codec, IDX_SPDIF_CTL, coef);
}
