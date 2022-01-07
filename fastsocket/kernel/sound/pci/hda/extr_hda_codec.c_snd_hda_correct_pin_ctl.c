
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCAP_HP_DRV ;
 unsigned int AC_PINCAP_IN ;
 unsigned int AC_PINCAP_OUT ;
 unsigned int AC_PINCAP_VREF ;




 unsigned int AC_PINCAP_VREF_SHIFT ;
 unsigned int AC_PINCTL_HP_EN ;
 unsigned int AC_PINCTL_IN_EN ;
 unsigned int AC_PINCTL_OUT_EN ;
 unsigned int AC_PINCTL_VREFEN ;




 unsigned int AC_PINCTL_VREF_HIZ ;
 int ARRAY_SIZE (unsigned int**) ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

unsigned int snd_hda_correct_pin_ctl(struct hda_codec *codec,
         hda_nid_t pin, unsigned int val)
{
 static unsigned int cap_lists[][2] = {
  { 131, 135 },
  { 129, 133 },
  { 130, 134 },
  { 128, 132 },
 };
 unsigned int cap;

 if (!val)
  return 0;
 cap = snd_hda_query_pin_caps(codec, pin);
 if (!cap)
  return val;

 if (val & AC_PINCTL_OUT_EN) {
  if (!(cap & AC_PINCAP_OUT))
   val &= ~(AC_PINCTL_OUT_EN | AC_PINCTL_HP_EN);
  else if ((val & AC_PINCTL_HP_EN) && !(cap & AC_PINCAP_HP_DRV))
   val &= ~AC_PINCTL_HP_EN;
 }

 if (val & AC_PINCTL_IN_EN) {
  if (!(cap & AC_PINCAP_IN))
   val &= ~(AC_PINCTL_IN_EN | AC_PINCTL_VREFEN);
  else {
   unsigned int vcap, vref;
   int i;
   vcap = (cap & AC_PINCAP_VREF) >> AC_PINCAP_VREF_SHIFT;
   vref = val & AC_PINCTL_VREFEN;
   for (i = 0; i < ARRAY_SIZE(cap_lists); i++) {
    if (vref == cap_lists[i][0] &&
        !(vcap & cap_lists[i][1])) {
     if (i == ARRAY_SIZE(cap_lists) - 1)
      vref = AC_PINCTL_VREF_HIZ;
     else
      vref = cap_lists[i + 1][0];
    }
   }
   val &= ~AC_PINCTL_VREFEN;
   val |= vref;
  }
 }

 return val;
}
