
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct TYPE_3__ {int wWPAIELen; int abyWPAIE; } ;
struct TYPE_4__ {TYPE_1__ sMgmtObj; } ;
typedef TYPE_1__* PSMgmtObject ;
typedef TYPE_2__* PSDevice ;


 int E2BIG ;
 int EFAULT ;
 scalar_t__ copy_to_user (char*,int ,int) ;
 int netdev_priv (struct net_device*) ;

int iwctl_giwgenie(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *wrq,
     char *extra)
{
 PSDevice pDevice = (PSDevice)netdev_priv(dev);
 PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
 int ret=0;
 int space = wrq->length;

 wrq->length = 0;
 if(pMgmt->wWPAIELen > 0){
  wrq->length = pMgmt->wWPAIELen;
  if(pMgmt->wWPAIELen <= space){
   if(copy_to_user(extra, pMgmt->abyWPAIE, pMgmt->wWPAIELen)){
    ret = -EFAULT;
   }
  }else
   ret = -E2BIG;
 }

 return ret;
}
