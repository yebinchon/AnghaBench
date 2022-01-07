
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int macmode; } ;
typedef TYPE_1__ wlandevice_t ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;
typedef int __u32 ;


 int IW_MODE_ADHOC ;
 int IW_MODE_AUTO ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;




__attribute__((used)) static int p80211wext_giwmode(netdevice_t *dev,
         struct iw_request_info *info,
         __u32 *mode, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;

 switch (wlandev->macmode) {
 case 128:
  *mode = IW_MODE_ADHOC;
  break;
 case 129:
  *mode = IW_MODE_INFRA;
  break;
 case 130:
  *mode = IW_MODE_MASTER;
  break;
 default:

  *mode = IW_MODE_AUTO;
 }

 return 0;
}
