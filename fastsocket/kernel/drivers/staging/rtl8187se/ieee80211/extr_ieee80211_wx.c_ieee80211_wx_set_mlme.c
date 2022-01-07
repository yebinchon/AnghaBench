
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct iw_request_info {int dummy; } ;
struct iw_mlme {int cmd; } ;
struct ieee80211_device {int dummy; } ;


 int EOPNOTSUPP ;


 int ieee80211_disassociate (struct ieee80211_device*) ;

int ieee80211_wx_set_mlme(struct ieee80211_device *ieee,
                               struct iw_request_info *info,
                               union iwreq_data *wrqu, char *extra)
{
 struct iw_mlme *mlme = (struct iw_mlme *) extra;


 switch (mlme->cmd) {
        case 129:
 case 128:

  ieee80211_disassociate(ieee);
  break;
  default:
                return -EOPNOTSUPP;
        }

 return 0;
}
