
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
union iwreq_data {TYPE_2__ data; } ;
struct r8192_priv {int wx_sem; struct ieee80211_device* ieee80211; int up; } ;
struct net_device {int dummy; } ;
struct iw_scan_req {scalar_t__ essid_len; int essid; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int ssid; scalar_t__ ssid_len; } ;
struct TYPE_4__ {int bBusyTraffic; } ;
struct ieee80211_device {scalar_t__ state; scalar_t__ scanning; TYPE_3__ current_network; TYPE_1__ LinkDetectInfo; } ;


 int EAGAIN ;
 int ENETDOWN ;
 scalar_t__ IEEE80211_LINKED ;
 int IW_SCAN_THIS_ESSID ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_softmac_scan_syncro (struct ieee80211_device*) ;
 int ieee80211_wx_set_scan (struct ieee80211_device*,struct iw_request_info*,union iwreq_data*,char*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int up (int *) ;

__attribute__((used)) static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device* ieee = priv->ieee80211;
 int ret = 0;

 if(!priv->up) return -ENETDOWN;

 if (priv->ieee80211->LinkDetectInfo.bBusyTraffic == 1)
  return -EAGAIN;

 if (wrqu->data.flags & IW_SCAN_THIS_ESSID)
 {
  struct iw_scan_req* req = (struct iw_scan_req*)b;
  if (req->essid_len)
  {

   ieee->current_network.ssid_len = req->essid_len;
   memcpy(ieee->current_network.ssid, req->essid, req->essid_len);

  }
 }

 down(&priv->wx_sem);
 if(priv->ieee80211->state != IEEE80211_LINKED){
                priv->ieee80211->scanning = 0;
                ieee80211_softmac_scan_syncro(priv->ieee80211);
                ret = 0;
        }
 else
 ret = ieee80211_wx_set_scan(priv->ieee80211,a,wrqu,b);
 up(&priv->wx_sem);
 return ret;
}
