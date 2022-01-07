
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int n_akm_suites; int * akm_suites; } ;
struct TYPE_5__ {TYPE_1__ crypto; } ;
struct TYPE_6__ {TYPE_2__ connect; } ;
struct wireless_dev {TYPE_3__ wext; } ;


 int EINVAL ;
 int IW_AUTH_KEY_MGMT_802_1X ;
 int IW_AUTH_KEY_MGMT_PSK ;
 int WLAN_AKM_SUITE_8021X ;
 int WLAN_AKM_SUITE_PSK ;

__attribute__((used)) static int cfg80211_set_key_mgt(struct wireless_dev *wdev, u32 key_mgt)
{
 int nr_akm_suites = 0;

 if (key_mgt & ~(IW_AUTH_KEY_MGMT_802_1X |
   IW_AUTH_KEY_MGMT_PSK))
  return -EINVAL;

 if (key_mgt & IW_AUTH_KEY_MGMT_802_1X) {
  wdev->wext.connect.crypto.akm_suites[nr_akm_suites] =
   WLAN_AKM_SUITE_8021X;
  nr_akm_suites++;
 }

 if (key_mgt & IW_AUTH_KEY_MGMT_PSK) {
  wdev->wext.connect.crypto.akm_suites[nr_akm_suites] =
   WLAN_AKM_SUITE_PSK;
  nr_akm_suites++;
 }

 wdev->wext.connect.crypto.n_akm_suites = nr_akm_suites;

 return 0;
}
