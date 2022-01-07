
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int auth_type; } ;
struct TYPE_4__ {TYPE_1__ connect; } ;
struct wireless_dev {TYPE_2__ wext; } ;
typedef int s32 ;


 int EINVAL ;
 int IW_AUTH_ALG_LEAP ;
 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;
 int NL80211_AUTHTYPE_AUTOMATIC ;
 int NL80211_AUTHTYPE_NETWORK_EAP ;
 int NL80211_AUTHTYPE_OPEN_SYSTEM ;
 int NL80211_AUTHTYPE_SHARED_KEY ;

__attribute__((used)) static int cfg80211_set_auth_alg(struct wireless_dev *wdev,
     s32 auth_alg)
{
 int nr_alg = 0;

 if (!auth_alg)
  return -EINVAL;

 if (auth_alg & ~(IW_AUTH_ALG_OPEN_SYSTEM |
    IW_AUTH_ALG_SHARED_KEY |
    IW_AUTH_ALG_LEAP))
  return -EINVAL;

 if (auth_alg & IW_AUTH_ALG_OPEN_SYSTEM) {
  nr_alg++;
  wdev->wext.connect.auth_type = NL80211_AUTHTYPE_OPEN_SYSTEM;
 }

 if (auth_alg & IW_AUTH_ALG_SHARED_KEY) {
  nr_alg++;
  wdev->wext.connect.auth_type = NL80211_AUTHTYPE_SHARED_KEY;
 }

 if (auth_alg & IW_AUTH_ALG_LEAP) {
  nr_alg++;
  wdev->wext.connect.auth_type = NL80211_AUTHTYPE_NETWORK_EAP;
 }

 if (nr_alg > 1)
  wdev->wext.connect.auth_type = NL80211_AUTHTYPE_AUTOMATIC;

 return 0;
}
