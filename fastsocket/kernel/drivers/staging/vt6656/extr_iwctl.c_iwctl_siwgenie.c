
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct TYPE_3__ {char wWPAIELen; int abyWPAIE; } ;
struct TYPE_4__ {TYPE_1__ sMgmtObj; } ;
typedef TYPE_1__* PSMgmtObject ;
typedef TYPE_2__* PSDevice ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 char MAX_WPA_IE_LEN ;
 scalar_t__ copy_from_user (int ,char*,char) ;
 int memset (int ,int ,char) ;
 int netdev_priv (struct net_device*) ;

int iwctl_siwgenie(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *wrq,
     char *extra)
{
 PSDevice pDevice = (PSDevice)netdev_priv(dev);
 PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
 int ret=0;

 if(wrq->length){
  if ((wrq->length < 2) || (extra[1]+2 != wrq->length)) {
   ret = -EINVAL;
   goto out;
  }
  if(wrq->length > MAX_WPA_IE_LEN){
   ret = -ENOMEM;
   goto out;
  }
  memset(pMgmt->abyWPAIE, 0, MAX_WPA_IE_LEN);
  if(copy_from_user(pMgmt->abyWPAIE, extra, wrq->length)){
   ret = -EFAULT;
   goto out;
  }
  pMgmt->wWPAIELen = wrq->length;
 }else {
  memset(pMgmt->abyWPAIE, 0, MAX_WPA_IE_LEN);
  pMgmt->wWPAIELen = 0;
 }

 out:
 return 0;
}
