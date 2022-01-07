
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
extern inline int ieee80211_is_empty_essid(const char *essid, int essid_len)
{

 if (essid_len == 1 && essid[0] == ' ')
  return 1;


 while (essid_len) {
  essid_len--;
  if (essid[essid_len] != '\0')
   return 0;
 }

 return 1;
}
