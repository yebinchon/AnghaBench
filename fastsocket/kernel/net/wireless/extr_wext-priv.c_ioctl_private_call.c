
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct iwreq {TYPE_1__ u; } ;
struct iw_request_info {int dummy; } ;
struct iw_priv_args {int dummy; } ;
typedef int (* iw_handler ) (struct net_device*,struct iw_request_info*,TYPE_1__*,char*) ;


 int EINVAL ;
 int EIWCOMMIT ;
 int call_commit_handler (struct net_device*) ;
 int get_priv_descr_and_size (struct net_device*,unsigned int,struct iw_priv_args const**) ;
 int ioctl_private_iw_point (int *,unsigned int,struct iw_priv_args const*,int (*) (struct net_device*,struct iw_request_info*,TYPE_1__*,char*),struct net_device*,struct iw_request_info*,int) ;

int ioctl_private_call(struct net_device *dev, struct iwreq *iwr,
         unsigned int cmd, struct iw_request_info *info,
         iw_handler handler)
{
 int extra_size = 0, ret = -EINVAL;
 const struct iw_priv_args *descr;

 extra_size = get_priv_descr_and_size(dev, cmd, &descr);


 if (extra_size == 0) {

  ret = handler(dev, info, &(iwr->u), (char *) &(iwr->u));
 } else {
  ret = ioctl_private_iw_point(&iwr->u.data, cmd, descr,
          handler, dev, info, extra_size);
 }


 if (ret == -EIWCOMMIT)
  ret = call_commit_handler(dev);

 return ret;
}
