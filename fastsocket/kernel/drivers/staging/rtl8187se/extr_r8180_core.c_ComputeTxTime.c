
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int N_DBPSOfRate (int) ;
 scalar_t__ rtl8180_IsWirelessBMode (int) ;

u16 ComputeTxTime(u16 FrameLength, u16 DataRate, u8 bManagementFrame,
    u8 bShortPreamble)
{
 u16 FrameTime;
 u16 N_DBPS;
 u16 Ceiling;

 if (rtl8180_IsWirelessBMode(DataRate)) {
  if (bManagementFrame || !bShortPreamble || DataRate == 10)

   FrameTime = (u16)(144+48+(FrameLength*8/(DataRate/10)));
  else

   FrameTime = (u16)(72+24+(FrameLength*8/(DataRate/10)));

  if ((FrameLength*8 % (DataRate/10)) != 0)
   FrameTime++;
 } else {
  N_DBPS = N_DBPSOfRate(DataRate);
  Ceiling = (16 + 8*FrameLength + 6) / N_DBPS
    + (((16 + 8*FrameLength + 6) % N_DBPS) ? 1 : 0);
  FrameTime = (u16)(16 + 4 + 4*Ceiling + 6);
 }
 return FrameTime;
}
