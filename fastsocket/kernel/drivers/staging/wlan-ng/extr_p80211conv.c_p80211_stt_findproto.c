
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



int p80211_stt_findproto(u16 proto)
{







 if (proto == 0x80f3)
  return 1;

 return 0;
}
