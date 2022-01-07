
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_priv_args {int set_args; int get_args; } ;
struct iw_point {int length; int pointer; } ;
typedef int (* iw_handler ) (struct net_device*,struct iw_request_info*,union iwreq_data*,char*) ;


 int E2BIG ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IW_IS_GET (unsigned int) ;
 scalar_t__ IW_IS_SET (unsigned int) ;
 int IW_PRIV_SIZE_FIXED ;
 int IW_PRIV_SIZE_MASK ;
 int adjust_priv_size (int,struct iw_point*) ;
 scalar_t__ copy_from_user (char*,int ,int) ;
 scalar_t__ copy_to_user (int ,char*,int) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;

__attribute__((used)) static int ioctl_private_iw_point(struct iw_point *iwp, unsigned int cmd,
      const struct iw_priv_args *descr,
      iw_handler handler, struct net_device *dev,
      struct iw_request_info *info, int extra_size)
{
 char *extra;
 int err;


 if (IW_IS_SET(cmd)) {
  if (!iwp->pointer && iwp->length != 0)
   return -EFAULT;

  if (iwp->length > (descr->set_args & IW_PRIV_SIZE_MASK))
   return -E2BIG;
 } else if (!iwp->pointer)
  return -EFAULT;

 extra = kzalloc(extra_size, GFP_KERNEL);
 if (!extra)
  return -ENOMEM;


 if (IW_IS_SET(cmd) && (iwp->length != 0)) {
  if (copy_from_user(extra, iwp->pointer, extra_size)) {
   err = -EFAULT;
   goto out;
  }
 }


 err = handler(dev, info, (union iwreq_data *) iwp, extra);


 if (!err && IW_IS_GET(cmd)) {



  if (!(descr->get_args & IW_PRIV_SIZE_FIXED))
   extra_size = adjust_priv_size(descr->get_args, iwp);

  if (copy_to_user(iwp->pointer, extra, extra_size))
   err = -EFAULT;
 }

out:
 kfree(extra);
 return err;
}
