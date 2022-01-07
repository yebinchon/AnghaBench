
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct r8192_priv {int wx_sem; TYPE_1__* pFirmware; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int fixed; int value; } ;
struct TYPE_2__ {int FirmwareVersion; } ;


 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int r8191su_wx_get_firm_version(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_param *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u16 firmware_version;

 down(&priv->wx_sem);
 firmware_version = priv->pFirmware->FirmwareVersion;
 wrqu->value = firmware_version;
 wrqu->fixed = 1;

 up(&priv->wx_sem);
 return 0;
}
