
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aes_iec958 {unsigned int* status; } ;


 unsigned int IEC958_AES0_CON_EMPHASIS_5015 ;
 unsigned int IEC958_AES0_PRO_EMPHASIS_5015 ;
 unsigned int IEC958_AES0_PRO_FS_32000 ;
 unsigned int IEC958_AES0_PRO_FS_48000 ;
 int memset (unsigned int*,int ,int) ;

__attribute__((used)) static void decode_spdif_bits(struct snd_aes_iec958 *diga, unsigned int val)
{
 memset(diga->status, 0, sizeof(diga->status));
 diga->status[0] = val & 0x03;
 if (val & 0x01) {

  if (val & (1U << 3))
   diga->status[0] |= IEC958_AES0_PRO_EMPHASIS_5015;
  switch ((val >> 12) & 0x7) {
  case 0:
   break;
  case 2:
   diga->status[0] |= IEC958_AES0_PRO_FS_32000;
   break;
  default:
   diga->status[0] |= IEC958_AES0_PRO_FS_48000;
   break;
  }
 } else {

  diga->status[0] |= val & (1U << 2);
  if (val & (1U << 3))
   diga->status[0] |= IEC958_AES0_CON_EMPHASIS_5015;
  diga->status[1] |= (val >> 4) & 0x3f;
  diga->status[3] |= (val >> 12) & 0x07;
 }
}
