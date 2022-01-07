
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bEnableHostapd; } ;
typedef TYPE_1__* PSDevice ;


 int EINVAL ;
 int hostap_disable_hostapd (TYPE_1__*,int) ;
 int hostap_enable_hostapd (TYPE_1__*,int) ;

int hostap_set_hostapd(PSDevice pDevice, int val, int rtnl_locked)
{
 if (val < 0 || val > 1)
  return -EINVAL;

 if (pDevice->bEnableHostapd == val)
  return 0;

 pDevice->bEnableHostapd = val;

 if (val)
  return hostap_enable_hostapd(pDevice, rtnl_locked);
 else
  return hostap_disable_hostapd(pDevice, rtnl_locked);
}
