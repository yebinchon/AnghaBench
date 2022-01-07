
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_rate {void* ack_time; void* perfect_tx_time; } ;
struct ieee80211_rate {int flags; int bitrate; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_RATE_ERP_G ;
 void* ieee80211_frame_duration (int,int,int ,int,int) ;

__attribute__((used)) static void
calc_rate_durations(enum ieee80211_band band,
      struct minstrel_rate *d,
      struct ieee80211_rate *rate)
{
 int erp = !!(rate->flags & IEEE80211_RATE_ERP_G);

 d->perfect_tx_time = ieee80211_frame_duration(band, 1200,
   rate->bitrate, erp, 1);
 d->ack_time = ieee80211_frame_duration(band, 10,
   rate->bitrate, erp, 1);
}
