
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct key_params {int cipher; int seq_len; scalar_t__ seq; int key_len; } ;
struct TYPE_2__ {int flags; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;


 int EINVAL ;
 int WIPHY_FLAG_IBSS_RSN ;





 int WLAN_KEY_LEN_AES_CMAC ;
 int WLAN_KEY_LEN_CCMP ;
 int WLAN_KEY_LEN_TKIP ;
 int WLAN_KEY_LEN_WEP104 ;
 int WLAN_KEY_LEN_WEP40 ;
 int cfg80211_supported_cipher_suite (TYPE_1__*,int) ;

int cfg80211_validate_key_settings(struct cfg80211_registered_device *rdev,
       struct key_params *params, int key_idx,
       bool pairwise, const u8 *mac_addr)
{
 if (key_idx > 5)
  return -EINVAL;

 if (!pairwise && mac_addr && !(rdev->wiphy.flags & WIPHY_FLAG_IBSS_RSN))
  return -EINVAL;

 if (pairwise && !mac_addr)
  return -EINVAL;
 if (pairwise && key_idx &&
     ((params->cipher == 130) ||
      (params->cipher == 131) ||
      (params->cipher == 132)))
  return -EINVAL;

 switch (params->cipher) {
 case 128:
  if (params->key_len != WLAN_KEY_LEN_WEP40)
   return -EINVAL;
  break;
 case 130:
  if (params->key_len != WLAN_KEY_LEN_TKIP)
   return -EINVAL;
  break;
 case 131:
  if (params->key_len != WLAN_KEY_LEN_CCMP)
   return -EINVAL;
  break;
 case 129:
  if (params->key_len != WLAN_KEY_LEN_WEP104)
   return -EINVAL;
  break;
 case 132:
  if (params->key_len != WLAN_KEY_LEN_AES_CMAC)
   return -EINVAL;
  break;
 default:







  break;
 }

 if (params->seq) {
  switch (params->cipher) {
  case 128:
  case 129:

   return -EINVAL;
  case 130:
  case 131:
  case 132:
   if (params->seq_len != 6)
    return -EINVAL;
   break;
  }
 }

 if (!cfg80211_supported_cipher_suite(&rdev->wiphy, params->cipher))
  return -EINVAL;

 return 0;
}
