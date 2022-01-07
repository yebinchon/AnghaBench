
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int data; } ;
struct iwreq {TYPE_1__ u; } ;
struct iw_request_info {int dummy; } ;
struct iw_ioctl_description {scalar_t__ header_type; int flags; } ;
typedef int (* iw_handler ) (struct net_device*,struct iw_request_info*,TYPE_1__*,int *) ;


 int EINVAL ;
 int EIWCOMMIT ;
 int EOPNOTSUPP ;
 int IW_DESCR_FLAG_EVENT ;
 scalar_t__ IW_HEADER_TYPE_POINT ;
 size_t IW_IOCTL_IDX (unsigned int) ;
 int call_commit_handler (struct net_device*) ;
 int ioctl_standard_iw_point (int *,unsigned int,struct iw_ioctl_description const*,int (*) (struct net_device*,struct iw_request_info*,TYPE_1__*,int *),struct net_device*,struct iw_request_info*) ;
 struct iw_ioctl_description* standard_ioctl ;
 size_t standard_ioctl_num ;
 int wireless_send_event (struct net_device*,unsigned int,TYPE_1__*,int *) ;

__attribute__((used)) static int ioctl_standard_call(struct net_device * dev,
          struct iwreq *iwr,
          unsigned int cmd,
          struct iw_request_info *info,
          iw_handler handler)
{
 const struct iw_ioctl_description * descr;
 int ret = -EINVAL;


 if (IW_IOCTL_IDX(cmd) >= standard_ioctl_num)
  return -EOPNOTSUPP;
 descr = &(standard_ioctl[IW_IOCTL_IDX(cmd)]);


 if (descr->header_type != IW_HEADER_TYPE_POINT) {


  ret = handler(dev, info, &(iwr->u), ((void*)0));


  if ((descr->flags & IW_DESCR_FLAG_EVENT) &&
     ((ret == 0) || (ret == -EIWCOMMIT)))
   wireless_send_event(dev, cmd, &(iwr->u), ((void*)0));
 } else {
  ret = ioctl_standard_iw_point(&iwr->u.data, cmd, descr,
           handler, dev, info);
 }


 if (ret == -EIWCOMMIT)
  ret = call_commit_handler(dev);



 return ret;
}
