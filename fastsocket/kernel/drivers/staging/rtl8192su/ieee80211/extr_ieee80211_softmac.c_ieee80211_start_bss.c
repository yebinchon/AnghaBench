
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {scalar_t__ state; int actscanning; int lock; int bGlobalDomain; } ;


 scalar_t__ IEEE80211_NOLINK ;
 int IS_COUNTRY_IE_VALID (struct ieee80211_device*) ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 int ieee80211_softmac_check_all_nets (struct ieee80211_device*) ;
 int ieee80211_start_scan (struct ieee80211_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_start_bss(struct ieee80211_device *ieee)
{
 unsigned long flags;




 if(IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))
 {
  if(! ieee->bGlobalDomain)
  {
   return;
  }
 }





 ieee80211_softmac_check_all_nets(ieee);
 spin_lock_irqsave(&ieee->lock, flags);

 if (ieee->state == IEEE80211_NOLINK){
  ieee->actscanning = 1;
  ieee80211_start_scan(ieee);
 }
 spin_unlock_irqrestore(&ieee->lock, flags);
}
