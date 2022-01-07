
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 p80211_channel_to_mhz(u8 ch, int dot11a)
{

 if (ch == 0)
  return 0;
 if (ch > 200)
  return 0;


 if (dot11a)
  return 5000 + (5 * ch);


 if (ch == 14)
  return 2484;

 if ((ch < 14) && (ch > 0))
  return 2407 + (5 * ch);

 return 0;
}
