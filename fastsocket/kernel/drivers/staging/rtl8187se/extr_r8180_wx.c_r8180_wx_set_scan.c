
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
union iwreq_data {TYPE_1__ data; } ;
struct TYPE_6__ {scalar_t__ bBusyTraffic; } ;
struct r8180_priv {int wx_sem; struct ieee80211_device* ieee80211; TYPE_3__ link_detect; scalar_t__ bInactivePs; scalar_t__ up; } ;
struct net_device {int dummy; } ;
struct iw_scan_req {scalar_t__ essid_len; int essid; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {int ssid; scalar_t__ ssid_len; } ;
struct ieee80211_device {int actscanning; scalar_t__ state; TYPE_2__ current_network; scalar_t__ bHwRadioOff; } ;


 scalar_t__ IEEE80211_LINKED ;
 int IPSLeave (struct net_device*) ;
 int IW_SCAN_THIS_ESSID ;
 int down (int *) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_softmac_ips_scan_syncro (struct ieee80211_device*) ;
 int ieee80211_wx_set_scan (struct ieee80211_device*,struct iw_request_info*,union iwreq_data*,char*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int printk (char*) ;
 int up (int *) ;

__attribute__((used)) static int r8180_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 int ret;
 struct ieee80211_device* ieee = priv->ieee80211;


 if(priv->ieee80211->bHwRadioOff)
  return 0;




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
 if(priv->up){

  priv->ieee80211->actscanning = 1;
  if(priv->bInactivePs && (priv->ieee80211->state != IEEE80211_LINKED)){
   IPSLeave(dev);
  ieee80211_softmac_ips_scan_syncro(priv->ieee80211);



   ret = 0;
  }
  else
  {


   if ((priv->link_detect.bBusyTraffic) && (1))
   {
    ret = 0;
    printk("Now traffic is busy, please try later!\n");
   }
   else

    ret = ieee80211_wx_set_scan(priv->ieee80211,a,wrqu,b);
  }
 }
 else
  ret = -1;

 up(&priv->wx_sem);

 return ret;
}
