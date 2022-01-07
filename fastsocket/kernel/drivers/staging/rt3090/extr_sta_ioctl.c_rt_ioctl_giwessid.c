
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
struct TYPE_6__ {int SsidLen; int Ssid; } ;
struct TYPE_7__ {TYPE_1__ CommonCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 scalar_t__ MONITOR_ON (TYPE_2__*) ;
 scalar_t__ OPSTATUS_TEST_FLAG (TYPE_2__*,int ) ;
 TYPE_2__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RT_DEBUG_TRACE ;
 int fOP_STATUS_MEDIA_STATE_CONNECTED ;
 int memcpy (char*,int ,int ) ;

int rt_ioctl_giwessid(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *essid)
{
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);

 if (pAdapter == ((void*)0))
 {


  return -ENETDOWN;
 }

 data->flags = 1;
    if (MONITOR_ON(pAdapter))
    {
        data->length = 0;
        return 0;
    }

 if (OPSTATUS_TEST_FLAG(pAdapter, fOP_STATUS_MEDIA_STATE_CONNECTED))
 {
  DBGPRINT(RT_DEBUG_TRACE ,("MediaState is connected\n"));
  data->length = pAdapter->CommonCfg.SsidLen;
  memcpy(essid, pAdapter->CommonCfg.Ssid, pAdapter->CommonCfg.SsidLen);
 }
 else
 {
  data->length = 0;
  DBGPRINT(RT_DEBUG_TRACE ,("MediaState is not connected, ess\n"));
 }

 return 0;

}
