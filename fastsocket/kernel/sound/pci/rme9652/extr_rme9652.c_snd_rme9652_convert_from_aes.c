
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_aes_iec958 {int* status; } ;


 int IEC958_AES0_CON_EMPHASIS_5015 ;
 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_EMPHASIS_5015 ;
 int RME9652_Dolby ;
 int RME9652_EMP ;
 int RME9652_PRO ;

__attribute__((used)) static u32 snd_rme9652_convert_from_aes(struct snd_aes_iec958 *aes)
{
 u32 val = 0;
 val |= (aes->status[0] & IEC958_AES0_PROFESSIONAL) ? RME9652_PRO : 0;
 val |= (aes->status[0] & IEC958_AES0_NONAUDIO) ? RME9652_Dolby : 0;
 if (val & RME9652_PRO)
  val |= (aes->status[0] & IEC958_AES0_PRO_EMPHASIS_5015) ? RME9652_EMP : 0;
 else
  val |= (aes->status[0] & IEC958_AES0_CON_EMPHASIS_5015) ? RME9652_EMP : 0;
 return val;
}
