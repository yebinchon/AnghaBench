
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct reg_beacon {int list; int chan; } ;
struct ieee80211_channel {int flags; scalar_t__ band; int center_freq; scalar_t__ beacon_found; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IEEE80211_CHAN_RADAR ;
 int REG_DBG_PRINT (char*,int ,int ,int ) ;
 int freq_is_chan_12_13_14 (int ) ;
 int ieee80211_frequency_to_channel (int ) ;
 struct reg_beacon* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct ieee80211_channel*,int) ;
 int pending_reg_beacon (struct ieee80211_channel*) ;
 int reg_pending_beacons ;
 int reg_pending_beacons_lock ;
 int reg_work ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wiphy_name (struct wiphy*) ;

int regulatory_hint_found_beacon(struct wiphy *wiphy,
     struct ieee80211_channel *beacon_chan,
     gfp_t gfp)
{
 struct reg_beacon *reg_beacon;
 bool processing;

 if (beacon_chan->beacon_found ||
     beacon_chan->flags & IEEE80211_CHAN_RADAR ||
     (beacon_chan->band == IEEE80211_BAND_2GHZ &&
      !freq_is_chan_12_13_14(beacon_chan->center_freq)))
  return 0;

 spin_lock_bh(&reg_pending_beacons_lock);
 processing = pending_reg_beacon(beacon_chan);
 spin_unlock_bh(&reg_pending_beacons_lock);

 if (processing)
  return 0;

 reg_beacon = kzalloc(sizeof(struct reg_beacon), gfp);
 if (!reg_beacon)
  return -ENOMEM;

 REG_DBG_PRINT("Found new beacon on frequency: %d MHz (Ch %d) on %s\n",
        beacon_chan->center_freq,
        ieee80211_frequency_to_channel(beacon_chan->center_freq),
        wiphy_name(wiphy));

 memcpy(&reg_beacon->chan, beacon_chan,
        sizeof(struct ieee80211_channel));





 spin_lock_bh(&reg_pending_beacons_lock);
 list_add_tail(&reg_beacon->list, &reg_pending_beacons);
 spin_unlock_bh(&reg_pending_beacons_lock);

 schedule_work(&reg_work);

 return 0;
}
