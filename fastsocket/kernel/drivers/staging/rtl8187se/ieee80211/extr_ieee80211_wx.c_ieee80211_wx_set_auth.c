
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; } ;
struct ieee80211_device {int tkip_countermeasures; int drop_unencrypted; int open_wep; int wpa_enabled; int ieee802_1x; int privacy_invoked; } ;


 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;



 int IW_AUTH_INDEX ;







int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
                               struct iw_request_info *info,
                               struct iw_param *data, char *extra)
{






 switch (data->flags & IW_AUTH_INDEX) {
        case 128:


  break;
        case 135:
        case 136:
        case 133:




                break;
        case 130:
                ieee->tkip_countermeasures = data->value;
                break;
        case 134:
                ieee->drop_unencrypted = data->value;
  break;

 case 137:
  ieee->open_wep = (data->value&IW_AUTH_ALG_OPEN_SYSTEM)?1:0;

  break;


 case 129:
  ieee->wpa_enabled = (data->value)?1:0;

  break;


 case 131:
                ieee->ieee802_1x = data->value;
  break;
 case 132:
  ieee->privacy_invoked = data->value;
  break;
 default:
                return -EOPNOTSUPP;
 }
 return 0;
}
