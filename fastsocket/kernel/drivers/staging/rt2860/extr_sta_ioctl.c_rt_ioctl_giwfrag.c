
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int fixed; int value; } ;
struct TYPE_4__ {int FragmentThreshold; } ;
struct TYPE_5__ {TYPE_1__ CommonCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int MAX_FRAG_THRESHOLD ;
 int RTMP_TEST_FLAG (TYPE_2__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_giwfrag(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_param *frag, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;


     if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
     {
        DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
         return -ENETDOWN;
     }

 frag->value = pAdapter->CommonCfg.FragmentThreshold;
 frag->disabled = (frag->value == MAX_FRAG_THRESHOLD);
 frag->fixed = 1;

 return 0;
}
