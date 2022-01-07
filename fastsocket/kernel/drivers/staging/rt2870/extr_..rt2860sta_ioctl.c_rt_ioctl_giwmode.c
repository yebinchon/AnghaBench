
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;
typedef int PRTMP_ADAPTER ;


 scalar_t__ ADHOC_ON (int ) ;
 int DBGPRINT (int ,char*) ;
 scalar_t__ INFRA_ON (int ) ;
 int IW_MODE_ADHOC ;
 int IW_MODE_AUTO ;
 int IW_MODE_INFRA ;
 int IW_MODE_MONITOR ;
 scalar_t__ MONITOR_ON (int ) ;
 int RT_DEBUG_TRACE ;

int rt_ioctl_giwmode(struct net_device *dev,
     struct iw_request_info *info,
     __u32 *mode, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;

 if (ADHOC_ON(pAdapter))
  *mode = IW_MODE_ADHOC;
    else if (INFRA_ON(pAdapter))
  *mode = IW_MODE_INFRA;
    else if (MONITOR_ON(pAdapter))
    {
        *mode = IW_MODE_MONITOR;
    }
    else
        *mode = IW_MODE_AUTO;

 DBGPRINT(RT_DEBUG_TRACE, ("==>rt_ioctl_giwmode(mode=%d)\n", *mode));
 return 0;
}
