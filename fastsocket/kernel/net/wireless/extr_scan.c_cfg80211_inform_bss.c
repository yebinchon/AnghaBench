
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef void* u16 ;
struct wiphy {scalar_t__ signal_type; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int signal; int capability; int ies; int beacon_ies; void* beacon_interval; struct ieee80211_channel* channel; int bssid; } ;
struct cfg80211_internal_bss {struct cfg80211_bss pub; } ;
struct cfg80211_bss_ies {size_t len; int data; int tsf; } ;
typedef int s32 ;
typedef int gfp_t ;


 scalar_t__ CFG80211_SIGNAL_TYPE_UNSPEC ;
 size_t ETH_ALEN ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_CAPABILITY_ESS ;
 struct cfg80211_internal_bss* cfg80211_bss_update (int ,struct cfg80211_internal_bss*) ;
 struct ieee80211_channel* cfg80211_get_bss_channel (struct wiphy*,int const*,size_t,struct ieee80211_channel*) ;
 struct cfg80211_bss_ies* kmalloc (int,int ) ;
 int memcpy (int ,int const*,size_t) ;
 int rcu_assign_pointer (int ,struct cfg80211_bss_ies*) ;
 int regulatory_hint_found_beacon (struct wiphy*,struct ieee80211_channel*,int ) ;
 int trace_cfg80211_return_bss (struct cfg80211_bss*) ;
 int wiphy_to_dev (struct wiphy*) ;

struct cfg80211_bss*
cfg80211_inform_bss(struct wiphy *wiphy,
      struct ieee80211_channel *channel,
      const u8 *bssid, u64 tsf, u16 capability,
      u16 beacon_interval, const u8 *ie, size_t ielen,
      s32 signal, gfp_t gfp)
{
 struct cfg80211_bss_ies *ies;
 struct cfg80211_internal_bss tmp = {}, *res;

 if (WARN_ON(!wiphy))
  return ((void*)0);

 if (WARN_ON(wiphy->signal_type == CFG80211_SIGNAL_TYPE_UNSPEC &&
   (signal < 0 || signal > 100)))
  return ((void*)0);

 channel = cfg80211_get_bss_channel(wiphy, ie, ielen, channel);
 if (!channel)
  return ((void*)0);

 memcpy(tmp.pub.bssid, bssid, ETH_ALEN);
 tmp.pub.channel = channel;
 tmp.pub.signal = signal;
 tmp.pub.beacon_interval = beacon_interval;
 tmp.pub.capability = capability;
 ies = kmalloc(sizeof(*ies) + ielen, gfp);
 if (!ies)
  return ((void*)0);
 ies->len = ielen;
 ies->tsf = tsf;
 memcpy(ies->data, ie, ielen);

 rcu_assign_pointer(tmp.pub.beacon_ies, ies);
 rcu_assign_pointer(tmp.pub.ies, ies);

 res = cfg80211_bss_update(wiphy_to_dev(wiphy), &tmp);
 if (!res)
  return ((void*)0);

 if (res->pub.capability & WLAN_CAPABILITY_ESS)
  regulatory_hint_found_beacon(wiphy, channel, gfp);

 trace_cfg80211_return_bss(&res->pub);

 return &res->pub;
}
