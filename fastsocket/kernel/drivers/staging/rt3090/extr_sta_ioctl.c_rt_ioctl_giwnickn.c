
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_3__ {scalar_t__ nickname; } ;
typedef int PSTRING ;
typedef TYPE_1__* PRTMP_ADAPTER ;


 int ENETDOWN ;
 TYPE_1__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 scalar_t__ strlen (int ) ;

int rt_ioctl_giwnickn(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *nickname)
{
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);

 if (pAdapter == ((void*)0))
 {


  return -ENETDOWN;
 }

 if (data->length > strlen((PSTRING) pAdapter->nickname) + 1)
  data->length = strlen((PSTRING) pAdapter->nickname) + 1;
 if (data->length > 0) {
  memcpy(nickname, pAdapter->nickname, data->length-1);
  nickname[data->length-1] = '\0';
 }
 return 0;
}
