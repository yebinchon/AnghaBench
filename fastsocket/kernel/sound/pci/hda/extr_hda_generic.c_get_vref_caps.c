
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCAP_VREF ;
 unsigned int AC_PINCAP_VREF_100 ;
 unsigned int AC_PINCAP_VREF_GRD ;
 unsigned int AC_PINCAP_VREF_SHIFT ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static unsigned int get_vref_caps(struct hda_codec *codec, hda_nid_t pin)
{
 unsigned int pincap;

 pincap = snd_hda_query_pin_caps(codec, pin);
 pincap = (pincap & AC_PINCAP_VREF) >> AC_PINCAP_VREF_SHIFT;

 pincap &= ~(AC_PINCAP_VREF_GRD | AC_PINCAP_VREF_100);
 return pincap;
}
