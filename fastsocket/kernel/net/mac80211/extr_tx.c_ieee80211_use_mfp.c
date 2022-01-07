
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int dummy; } ;
typedef int __le16 ;


 int WLAN_STA_MFP ;
 int ieee80211_is_mgmt (int ) ;
 int ieee80211_is_robust_mgmt_frame (struct ieee80211_hdr*) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int ieee80211_use_mfp(__le16 fc, struct sta_info *sta,
        struct sk_buff *skb)
{
 if (!ieee80211_is_mgmt(fc))
  return 0;

 if (sta == ((void*)0) || !test_sta_flag(sta, WLAN_STA_MFP))
  return 0;

 if (!ieee80211_is_robust_mgmt_frame((struct ieee80211_hdr *)
         skb->data))
  return 0;

 return 1;
}
