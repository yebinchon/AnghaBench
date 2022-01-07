
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {TYPE_2__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct TYPE_5__ {int Channel; } ;
struct TYPE_6__ {TYPE_1__ CommonCfg; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 scalar_t__ ChannelSanity (TYPE_2__*,int) ;
 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;
 int MAP_KHZ_TO_CHANNEL_ID (int,int) ;
 int RTMP_TEST_FLAG (TYPE_2__*,int ) ;
 int RT_DEBUG_ERROR ;
 int RT_DEBUG_TRACE ;
 int SIOCSIWFREQ ;
 scalar_t__ TRUE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_siwfreq(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_freq *freq, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;
 int chan = -1;


    if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
        return -ENETDOWN;
    }


 if (freq->e > 1)
  return -EINVAL;

 if((freq->e == 0) && (freq->m <= 1000))
  chan = freq->m;
 else
  MAP_KHZ_TO_CHANNEL_ID( (freq->m /100) , chan);

    if (ChannelSanity(pAdapter, chan) == TRUE)
    {
 pAdapter->CommonCfg.Channel = chan;
 DBGPRINT(RT_DEBUG_ERROR, ("==>rt_ioctl_siwfreq::SIOCSIWFREQ[cmd=0x%x] (Channel=%d)\n", SIOCSIWFREQ, pAdapter->CommonCfg.Channel));
    }
    else
        return -EINVAL;

 return 0;
}
