
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_local {scalar_t__ hw_scan_band; TYPE_2__* hw_scan_req; int hw_scan_ies_bufsize; struct cfg80211_scan_request* scan_req; } ;
struct cfg80211_scan_request {int n_channels; int no_cck; int * rates; int ie_len; int ie; TYPE_1__** channels; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_4__ {int n_channels; int ie_len; int no_cck; scalar_t__ ie; TYPE_1__** channels; } ;
struct TYPE_3__ {int band; } ;


 scalar_t__ IEEE80211_NUM_BANDS ;
 int ieee80211_build_preq_ies (struct ieee80211_local*,int *,int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static bool ieee80211_prep_hw_scan(struct ieee80211_local *local)
{
 struct cfg80211_scan_request *req = local->scan_req;
 enum ieee80211_band band;
 int i, ielen, n_chans;

 do {
  if (local->hw_scan_band == IEEE80211_NUM_BANDS)
   return 0;

  band = local->hw_scan_band;
  n_chans = 0;
  for (i = 0; i < req->n_channels; i++) {
   if (req->channels[i]->band == band) {
    local->hw_scan_req->channels[n_chans] =
       req->channels[i];
    n_chans++;
   }
  }

  local->hw_scan_band++;
 } while (!n_chans);

 local->hw_scan_req->n_channels = n_chans;

 ielen = ieee80211_build_preq_ies(local, (u8 *)local->hw_scan_req->ie,
      local->hw_scan_ies_bufsize,
      req->ie, req->ie_len, band,
      req->rates[band], 0);
 local->hw_scan_req->ie_len = ielen;
 local->hw_scan_req->no_cck = req->no_cck;

 return 1;
}
