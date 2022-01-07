
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr {int sa_data; void* sa_family; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_10__ {int Bssid; } ;
struct TYPE_9__ {scalar_t__ WpaSupplicantUP; } ;
struct TYPE_8__ {int Bssid; } ;
struct TYPE_11__ {TYPE_3__ MlmeAux; TYPE_2__ StaCfg; TYPE_1__ CommonCfg; } ;
typedef TYPE_4__* PRTMP_ADAPTER ;


 scalar_t__ ADHOC_ON (TYPE_4__*) ;
 void* ARPHRD_ETHER ;
 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int ENOTCONN ;
 int ETH_ALEN ;
 scalar_t__ INFRA_ON (TYPE_4__*) ;
 TYPE_4__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RT_DEBUG_TRACE ;
 scalar_t__ WPA_SUPPLICANT_DISABLE ;
 int memcpy (int ,int *,int ) ;

int rt_ioctl_giwap(struct net_device *dev,
        struct iw_request_info *info,
        struct sockaddr *ap_addr, char *extra)
{
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);

 if (pAdapter == ((void*)0))
 {


  return -ENETDOWN;
 }

 if (INFRA_ON(pAdapter) || ADHOC_ON(pAdapter))
 {
  ap_addr->sa_family = ARPHRD_ETHER;
  memcpy(ap_addr->sa_data, &pAdapter->CommonCfg.Bssid, ETH_ALEN);
 }
 else
 {
  DBGPRINT(RT_DEBUG_TRACE, ("IOCTL::SIOCGIWAP(=EMPTY)\n"));
  return -ENOTCONN;
 }

 return 0;
}
