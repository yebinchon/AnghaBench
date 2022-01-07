
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int privacy; } ;
struct TYPE_4__ {TYPE_1__ connect; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_2__ wext; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; } ;


 int EOPNOTSUPP ;




 int IW_AUTH_INDEX ;






 scalar_t__ NL80211_IFTYPE_STATION ;
 int cfg80211_set_auth_alg (struct wireless_dev*,int ) ;
 int cfg80211_set_cipher_group (struct wireless_dev*,int ) ;
 int cfg80211_set_cipher_pairwise (struct wireless_dev*,int ) ;
 int cfg80211_set_key_mgt (struct wireless_dev*,int ) ;
 int cfg80211_set_wpa_version (struct wireless_dev*,int ) ;

__attribute__((used)) static int cfg80211_wext_siwauth(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 if (wdev->iftype != NL80211_IFTYPE_STATION)
  return -EOPNOTSUPP;

 switch (data->flags & IW_AUTH_INDEX) {
 case 131:
  wdev->wext.connect.privacy = data->value;
  return 0;
 case 128:
  return cfg80211_set_wpa_version(wdev, data->value);
 case 136:
  return cfg80211_set_cipher_group(wdev, data->value);
 case 133:
  return cfg80211_set_key_mgt(wdev, data->value);
 case 135:
  return cfg80211_set_cipher_pairwise(wdev, data->value);
 case 137:
  return cfg80211_set_auth_alg(wdev, data->value);
 case 129:
 case 130:
 case 134:
 case 132:
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
