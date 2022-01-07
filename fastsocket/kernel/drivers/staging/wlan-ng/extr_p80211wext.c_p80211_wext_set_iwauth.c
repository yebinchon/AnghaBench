
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hostwep; } ;
typedef TYPE_1__ wlandevice_t ;
struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;


 int DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted ;
 int DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked ;
 int EINVAL ;
 int HOSTWEP_SHAREDKEY ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;

 int IW_AUTH_INDEX ;

 int P80211ENUM_truth_false ;
 int P80211ENUM_truth_true ;
 int p80211wext_dorequest (TYPE_1__*,int ,int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int p80211_wext_set_iwauth(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;
 struct iw_param *param = &wrqu->param;
 int result = 0;

 pr_debug("set_iwauth flags[%d]\n", (int)param->flags & IW_AUTH_INDEX);

 switch (param->flags & IW_AUTH_INDEX) {
 case 129:
  pr_debug("drop_unencrypted %d\n", param->value);
  if (param->value)
   result =
       p80211wext_dorequest(wlandev,
       DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted,
       P80211ENUM_truth_true);
  else
   result =
       p80211wext_dorequest(wlandev,
       DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted,
       P80211ENUM_truth_false);
  break;

 case 128:
  pr_debug("privacy invoked %d\n", param->value);
  if (param->value)
   result =
       p80211wext_dorequest(wlandev,
       DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked,
       P80211ENUM_truth_true);
  else
   result =
       p80211wext_dorequest(wlandev,
       DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked,
       P80211ENUM_truth_false);

  break;

 case 130:
  if (param->value & IW_AUTH_ALG_OPEN_SYSTEM) {
   pr_debug("set open_system\n");
   wlandev->hostwep &= ~HOSTWEP_SHAREDKEY;
  } else if (param->value & IW_AUTH_ALG_SHARED_KEY) {
   pr_debug("set shared key\n");
   wlandev->hostwep |= HOSTWEP_SHAREDKEY;
  } else {

   pr_debug("unknown AUTH_ALG (%d)\n", param->value);
   result = -EINVAL;
  }
  break;

 default:
  break;
 }

 return result;
}
