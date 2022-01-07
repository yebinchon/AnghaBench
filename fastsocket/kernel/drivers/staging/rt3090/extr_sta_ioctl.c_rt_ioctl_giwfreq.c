
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int m; int e; } ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_4__ {int Channel; } ;
struct TYPE_5__ {TYPE_1__ CommonCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int MAP_CHANNEL_ID_TO_KHZ (int ,int) ;
 TYPE_2__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RT_DEBUG_TRACE ;

int rt_ioctl_giwfreq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *freq, char *extra)
{
 PRTMP_ADAPTER pAdapter = ((void*)0);
 UCHAR ch;
 ULONG m = 2412000;

 pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);
 if (pAdapter == ((void*)0))
 {


  return -ENETDOWN;
 }

  ch = pAdapter->CommonCfg.Channel;

 DBGPRINT(RT_DEBUG_TRACE,("==>rt_ioctl_giwfreq  %d\n", ch));

 MAP_CHANNEL_ID_TO_KHZ(ch, m);
 freq->m = m * 100;
 freq->e = 1;
 return 0;
}
