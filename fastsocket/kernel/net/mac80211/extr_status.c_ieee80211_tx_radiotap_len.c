
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ status; } ;
struct ieee80211_radiotap_header {int dummy; } ;
struct TYPE_3__ {scalar_t__ idx; int flags; } ;


 int IEEE80211_TX_RC_MCS ;

__attribute__((used)) static int ieee80211_tx_radiotap_len(struct ieee80211_tx_info *info)
{
 int len = sizeof(struct ieee80211_radiotap_header);


 if (info->status.rates[0].idx >= 0 &&
     !(info->status.rates[0].flags & IEEE80211_TX_RC_MCS))
  len += 2;


 len += 2;


 len += 1;


 if (info->status.rates[0].idx >= 0 &&
     info->status.rates[0].flags & IEEE80211_TX_RC_MCS)
  len += 3;

 return len;
}
