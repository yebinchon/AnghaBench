
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t AC_DEFCFG_DEVICE ;
 size_t AC_DEFCFG_DEVICE_SHIFT ;

const char *snd_hda_get_jack_type(u32 cfg)
{
 static char *jack_types[16] = {
  "Line Out", "Speaker", "HP Out", "CD",
  "SPDIF Out", "Digital Out", "Modem Line", "Modem Hand",
  "Line In", "Aux", "Mic", "Telephony",
  "SPDIF In", "Digital In", "Reserved", "Other"
 };

 return jack_types[(cfg & AC_DEFCFG_DEVICE)
    >> AC_DEFCFG_DEVICE_SHIFT];
}
