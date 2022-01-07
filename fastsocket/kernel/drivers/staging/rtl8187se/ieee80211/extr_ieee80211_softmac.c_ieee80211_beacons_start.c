
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int beacon_txing; int beacon_lock; } ;


 int ieee80211_send_beacon (struct ieee80211_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_beacons_start(struct ieee80211_device *ieee)
{
 unsigned long flags;

 spin_lock_irqsave(&ieee->beacon_lock,flags);

 ieee->beacon_txing = 1;
 ieee80211_send_beacon(ieee);

 spin_unlock_irqrestore(&ieee->beacon_lock,flags);
}
