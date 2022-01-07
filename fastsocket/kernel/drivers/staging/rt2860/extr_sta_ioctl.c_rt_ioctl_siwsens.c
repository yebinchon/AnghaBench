
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef int PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int RTMP_TEST_FLAG (int ,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_siwsens(struct net_device *dev,
     struct iw_request_info *info,
     char *name, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;


     if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
     {
         DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
         return -ENETDOWN;
     }

 return 0;
}
