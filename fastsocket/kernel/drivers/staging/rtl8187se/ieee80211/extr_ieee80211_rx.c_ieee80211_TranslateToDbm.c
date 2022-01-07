
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
ieee80211_TranslateToDbm(
 unsigned char SignalStrengthIndex
 )
{
 unsigned char SignalPower;


 SignalPower = (int)SignalStrengthIndex * 7 / 10;
 SignalPower -= 95;

 return SignalPower;
}
