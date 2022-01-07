
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
struct TYPE_4__ {int sa_data; } ;
struct iw_mlme {int cmd; TYPE_1__ addr; } ;
struct TYPE_5__ {int abyDesireBSSID; int abyCurrBSSID; } ;
struct TYPE_6__ {int PortOffset; int sKey; int bLinkPass; TYPE_2__ sMgmtObj; } ;
typedef TYPE_2__* PSMgmtObject ;
typedef TYPE_3__* PSDevice ;
typedef int HANDLE ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;


 int KeyvInitTable (int *,int ) ;
 int TRUE ;
 int WLAN_CMD_DISASSOCIATE ;
 int bScheduleCommand (int ,int ,int *) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memset (int ,int,int) ;
 int netdev_priv (struct net_device*) ;
 int printk (char*) ;

int iwctl_siwmlme(struct net_device *dev,
    struct iw_request_info * info,
    struct iw_point *wrq,
    char *extra)
{
 PSDevice pDevice = (PSDevice)netdev_priv(dev);
 PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
 struct iw_mlme *mlme = (struct iw_mlme *)extra;

 int ret = 0;

 if(memcmp(pMgmt->abyCurrBSSID, mlme->addr.sa_data, ETH_ALEN)){
  ret = -EINVAL;
  return ret;
 }
 switch(mlme->cmd){
 case 129:


  break;
 case 128:
  if(pDevice->bLinkPass == TRUE){
       printk("iwctl_siwmlme--->send DISASSOCIATE\n");

     memset(pMgmt->abyDesireBSSID, 0xFF,6);
  KeyvInitTable(&pDevice->sKey, pDevice->PortOffset);
   bScheduleCommand((HANDLE)pDevice, WLAN_CMD_DISASSOCIATE, ((void*)0));
  }
  break;
 default:
  ret = -EOPNOTSUPP;
 }

 return ret;

}
