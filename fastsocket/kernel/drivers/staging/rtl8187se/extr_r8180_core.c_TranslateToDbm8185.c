
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



long TranslateToDbm8185(u8 SignalStrengthIndex)
{
 long SignalPower;


 SignalPower = (long)((SignalStrengthIndex + 1) >> 1);
 SignalPower -= 95;

 return SignalPower;
}
