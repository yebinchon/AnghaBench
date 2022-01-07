
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ value; scalar_t__ disabled; } ;
struct TYPE_4__ {scalar_t__ RtsThreshold; } ;
struct TYPE_5__ {TYPE_1__ CommonCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ MAX_RTS_THRESHOLD ;
 int RTMP_TEST_FLAG (TYPE_2__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_siwrts(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_param *rts, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;
 u16 val;


    if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
        return -ENETDOWN;
    }

 if (rts->disabled)
  val = MAX_RTS_THRESHOLD;
 else if (rts->value < 0 || rts->value > MAX_RTS_THRESHOLD)
  return -EINVAL;
 else if (rts->value == 0)
     val = MAX_RTS_THRESHOLD;
 else
  val = rts->value;

 if (val != pAdapter->CommonCfg.RtsThreshold)
  pAdapter->CommonCfg.RtsThreshold = val;

 return 0;
}
