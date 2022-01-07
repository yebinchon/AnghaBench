
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int m; int e; } ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int Channel; } ;
struct TYPE_4__ {TYPE_1__ CommonCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int MAP_CHANNEL_ID_TO_KHZ (int ,int) ;
 int RT_DEBUG_TRACE ;

int rt_ioctl_giwfreq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *freq, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;
 UCHAR ch = pAdapter->CommonCfg.Channel;
 ULONG m;

 DBGPRINT(RT_DEBUG_TRACE,("==>rt_ioctl_giwfreq  %d\n", ch));

    MAP_CHANNEL_ID_TO_KHZ(ch, m);
 freq->m = m * 100;
 freq->e = 1;
 return 0;
}
