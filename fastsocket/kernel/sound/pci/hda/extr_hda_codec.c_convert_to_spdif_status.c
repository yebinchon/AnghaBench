
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short AC_DIG1_COPYRIGHT ;
 unsigned short AC_DIG1_EMPHASIS ;
 unsigned short AC_DIG1_LEVEL ;
 unsigned short AC_DIG1_NONAUDIO ;
 unsigned short AC_DIG1_PROFESSIONAL ;
 unsigned int IEC958_AES0_CON_EMPHASIS_5015 ;
 unsigned int IEC958_AES0_CON_NOT_COPYRIGHT ;
 unsigned int IEC958_AES0_NONAUDIO ;
 unsigned int IEC958_AES0_PROFESSIONAL ;
 unsigned int IEC958_AES0_PRO_EMPHASIS_5015 ;
 int IEC958_AES1_CON_ORIGINAL ;

__attribute__((used)) static unsigned int convert_to_spdif_status(unsigned short val)
{
 unsigned int sbits = 0;

 if (val & AC_DIG1_NONAUDIO)
  sbits |= IEC958_AES0_NONAUDIO;
 if (val & AC_DIG1_PROFESSIONAL)
  sbits |= IEC958_AES0_PROFESSIONAL;
 if (sbits & IEC958_AES0_PROFESSIONAL) {
  if (val & AC_DIG1_EMPHASIS)
   sbits |= IEC958_AES0_PRO_EMPHASIS_5015;
 } else {
  if (val & AC_DIG1_EMPHASIS)
   sbits |= IEC958_AES0_CON_EMPHASIS_5015;
  if (!(val & AC_DIG1_COPYRIGHT))
   sbits |= IEC958_AES0_CON_NOT_COPYRIGHT;
  if (val & AC_DIG1_LEVEL)
   sbits |= (IEC958_AES1_CON_ORIGINAL << 8);
  sbits |= val & (0x7f << 8);
 }
 return sbits;
}
