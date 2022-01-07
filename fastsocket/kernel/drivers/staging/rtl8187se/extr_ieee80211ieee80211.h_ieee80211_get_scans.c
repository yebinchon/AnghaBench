
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int scans; } ;



extern inline int ieee80211_get_scans(struct ieee80211_device *ieee)
{
 return ieee->scans;
}
