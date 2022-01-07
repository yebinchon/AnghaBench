
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {TYPE_3__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ RSNIE_Len; int * RSN_IE; } ;
struct TYPE_6__ {TYPE_2__ StaCfg; } ;
typedef TYPE_3__* PRTMP_ADAPTER ;


 int EINVAL ;
 scalar_t__ MAX_LEN_OF_RSNIE ;
 int NdisMoveMemory (int *,char*,scalar_t__) ;
 int NdisZeroMemory (int *,scalar_t__) ;

int rt_ioctl_siwgenie(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 PRTMP_ADAPTER pAd = dev->ml_priv;

 if (wrqu->data.length > MAX_LEN_OF_RSNIE ||
     (wrqu->data.length && extra == ((void*)0)))
  return -EINVAL;

 if (wrqu->data.length)
 {
  pAd->StaCfg.RSNIE_Len = wrqu->data.length;
  NdisMoveMemory(&pAd->StaCfg.RSN_IE[0], extra, pAd->StaCfg.RSNIE_Len);
 }
 else
 {
  pAd->StaCfg.RSNIE_Len = 0;
  NdisZeroMemory(&pAd->StaCfg.RSN_IE[0], MAX_LEN_OF_RSNIE);
 }

 return 0;
}
