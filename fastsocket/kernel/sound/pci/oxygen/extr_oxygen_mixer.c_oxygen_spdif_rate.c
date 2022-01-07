
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IEC958_AES3_CON_FS_176400 ;
 unsigned int IEC958_AES3_CON_FS_192000 ;
 unsigned int IEC958_AES3_CON_FS_32000 ;
 unsigned int IEC958_AES3_CON_FS_44100 ;
 unsigned int IEC958_AES3_CON_FS_48000 ;
 unsigned int IEC958_AES3_CON_FS_88200 ;
 unsigned int IEC958_AES3_CON_FS_96000 ;







 unsigned int OXYGEN_SPDIF_CS_RATE_SHIFT ;

__attribute__((used)) static unsigned int oxygen_spdif_rate(unsigned int oxygen_rate)
{
 switch (oxygen_rate) {
 case 132:
  return IEC958_AES3_CON_FS_32000 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 case 131:
  return IEC958_AES3_CON_FS_44100 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 default:
  return IEC958_AES3_CON_FS_48000 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 case 130:
  return 0xb << OXYGEN_SPDIF_CS_RATE_SHIFT;
 case 129:
  return IEC958_AES3_CON_FS_88200 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 case 128:
  return IEC958_AES3_CON_FS_96000 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 case 134:
  return IEC958_AES3_CON_FS_176400 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 case 133:
  return IEC958_AES3_CON_FS_192000 << OXYGEN_SPDIF_CS_RATE_SHIFT;
 }
}
