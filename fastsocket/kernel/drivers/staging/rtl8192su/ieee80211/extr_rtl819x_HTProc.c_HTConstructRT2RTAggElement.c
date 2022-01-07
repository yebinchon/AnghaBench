
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_device {scalar_t__ bSupportRemoteWakeUp; } ;


 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DL_ERR ;
 int memset (int*,int ,int) ;

void HTConstructRT2RTAggElement(struct ieee80211_device* ieee, u8* posRT2RTAgg, u8* len)
{
 if (posRT2RTAgg == ((void*)0)) {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "posRT2RTAgg can't be null in HTConstructRT2RTAggElement()\n");
  return;
 }
 memset(posRT2RTAgg, 0, *len);
 *posRT2RTAgg++ = 0x00;
 *posRT2RTAgg++ = 0xe0;
 *posRT2RTAgg++ = 0x4c;
 *posRT2RTAgg++ = 0x02;
 *posRT2RTAgg++ = 0x01;
 *posRT2RTAgg = 0x10;

 if(ieee->bSupportRemoteWakeUp) {
  *posRT2RTAgg |= 0x08;
 }

 *len = 6 + 2;
 return;
}
