
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_4__ {int nickname; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ IW_ESSID_MAX_SIZE ;
 TYPE_1__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RTMP_TEST_FLAG (TYPE_1__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 int memcpy (int ,char*,scalar_t__) ;
 int memset (int ,int ,scalar_t__) ;

int rt_ioctl_siwnickn(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *nickname)
{
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);


    if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
        DBGPRINT(RT_DEBUG_TRACE ,("INFO::Network is down!\n"));
        return -ENETDOWN;
    }

 if (data->length > IW_ESSID_MAX_SIZE)
  return -EINVAL;

 memset(pAdapter->nickname, 0, IW_ESSID_MAX_SIZE + 1);
 memcpy(pAdapter->nickname, nickname, data->length);


 return 0;
}
