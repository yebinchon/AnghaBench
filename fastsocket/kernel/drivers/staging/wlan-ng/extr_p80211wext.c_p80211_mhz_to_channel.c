
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u8 p80211_mhz_to_channel(u16 mhz)
{
 if (mhz >= 5000)
  return (mhz - 5000) / 5;

 if (mhz == 2482)
  return 14;

 if (mhz >= 2407)
  return (mhz - 2407) / 5;

 return 0;
}
