
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;
struct TYPE_2__ {int nickname; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;


 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

int rt_ioctl_giwnickn(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *nickname)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;

 if (data->length > strlen(pAdapter->nickname) + 1)
  data->length = strlen(pAdapter->nickname) + 1;
 if (data->length > 0) {
  memcpy(nickname, pAdapter->nickname, data->length-1);
  nickname[data->length-1] = '\0';
 }
 return 0;
}
