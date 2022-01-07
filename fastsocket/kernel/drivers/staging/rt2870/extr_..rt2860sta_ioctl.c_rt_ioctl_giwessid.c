
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {TYPE_3__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
struct TYPE_7__ {int SsidLen; int Ssid; } ;
struct TYPE_6__ {scalar_t__ WpaSupplicantUP; } ;
struct TYPE_8__ {TYPE_2__ CommonCfg; TYPE_1__ StaCfg; } ;
typedef TYPE_3__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 scalar_t__ MONITOR_ON (TYPE_3__*) ;
 scalar_t__ OPSTATUS_TEST_FLAG (TYPE_3__*,int ) ;
 int RT_DEBUG_TRACE ;
 scalar_t__ WPA_SUPPLICANT_DISABLE ;
 int fOP_STATUS_MEDIA_STATE_CONNECTED ;
 int memcpy (char*,int ,int ) ;

int rt_ioctl_giwessid(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *essid)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;

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
