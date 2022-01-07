
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCAP_VREF ;
 unsigned int AC_PINCAP_VREF_100 ;
 unsigned int AC_PINCAP_VREF_50 ;
 unsigned int AC_PINCAP_VREF_80 ;
 unsigned int AC_PINCAP_VREF_GRD ;
 unsigned int AC_PINCAP_VREF_SHIFT ;
 unsigned int AC_PINCTL_VREF_100 ;
 unsigned int AC_PINCTL_VREF_50 ;
 unsigned int AC_PINCTL_VREF_80 ;
 unsigned int AC_PINCTL_VREF_GRD ;
 unsigned int AC_PINCTL_VREF_HIZ ;
 int AC_VERB_GET_PIN_WIDGET_CONTROL ;
 unsigned int PIN_VREF50 ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

unsigned int snd_hda_get_default_vref(struct hda_codec *codec, hda_nid_t pin)
{
 unsigned int pincap;
 unsigned int oldval;
 oldval = snd_hda_codec_read(codec, pin, 0,
        AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
 pincap = snd_hda_query_pin_caps(codec, pin);
 pincap = (pincap & AC_PINCAP_VREF) >> AC_PINCAP_VREF_SHIFT;

 if ((pincap & AC_PINCAP_VREF_80) && oldval != PIN_VREF50)
  return AC_PINCTL_VREF_80;
 else if (pincap & AC_PINCAP_VREF_50)
  return AC_PINCTL_VREF_50;
 else if (pincap & AC_PINCAP_VREF_100)
  return AC_PINCTL_VREF_100;
 else if (pincap & AC_PINCAP_VREF_GRD)
  return AC_PINCTL_VREF_GRD;
 return AC_PINCTL_VREF_HIZ;
}
