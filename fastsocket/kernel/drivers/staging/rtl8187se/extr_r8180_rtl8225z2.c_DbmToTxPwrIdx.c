
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {scalar_t__ card_8185; } ;
typedef int s8 ;
typedef int s32 ;
typedef scalar_t__ WIRELESS_MODE ;


 scalar_t__ VERSION_8187S_B ;
 scalar_t__ WIRELESS_MODE_B ;
 scalar_t__ WIRELESS_MODE_G ;

s8 DbmToTxPwrIdx(struct r8180_priv *priv, WIRELESS_MODE WirelessMode,
   s32 PowerInDbm)
{
  bool bUseDefault = 1;
 s8 TxPwrIdx = 0;





 if (priv->card_8185 >= VERSION_8187S_B) {
  s32 tmp = 0;

  if (WirelessMode == WIRELESS_MODE_G) {
   bUseDefault = 0;
   tmp = (2 * PowerInDbm);

   if (tmp < 0)
    TxPwrIdx = 0;
   else if (tmp > 40)
    TxPwrIdx = 40;
   else
    TxPwrIdx = (s8)tmp;
  } else if (WirelessMode == WIRELESS_MODE_B) {
   bUseDefault = 0;
   tmp = (4 * PowerInDbm) - 52;

   if(tmp < 0)
    TxPwrIdx = 0;
   else if (tmp > 28)
    TxPwrIdx = 28;
   else
    TxPwrIdx = (s8)tmp;
  }
 }






 if (bUseDefault) {
  if (PowerInDbm < 0)
   TxPwrIdx = 0;
  else if (PowerInDbm > 35)
   TxPwrIdx = 35;
  else
   TxPwrIdx = (u8)PowerInDbm;
 }

 return TxPwrIdx;
}
