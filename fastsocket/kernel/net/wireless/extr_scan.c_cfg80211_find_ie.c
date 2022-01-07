
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;



const u8 *cfg80211_find_ie(u8 eid, const u8 *ies, int len)
{
 while (len > 2 && ies[0] != eid) {
  len -= ies[1] + 2;
  ies += ies[1] + 2;
 }
 if (len < 2)
  return ((void*)0);
 if (len < 2 + ies[1])
  return ((void*)0);
 return ies;
}
