
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int pointer; } ;
struct iw_ioctl_description {int max_tokens; int token_size; int min_tokens; int flags; } ;
struct iw_encode_ext {scalar_t__ key_len; } ;
typedef int (* iw_handler ) (struct net_device*,struct iw_request_info*,union iwreq_data*,char*) ;


 int E2BIG ;
 int EFAULT ;
 int EINVAL ;
 int EIWCOMMIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IW_DESCR_FLAG_EVENT ;
 int IW_DESCR_FLAG_NOMAX ;
 int IW_DESCR_FLAG_RESTRICT ;
 unsigned int IW_ESSID_MAX_SIZE ;
 scalar_t__ IW_IS_GET (unsigned int) ;
 scalar_t__ IW_IS_SET (unsigned int) ;


 unsigned int SIOCSIWENCODEEXT ;


 int copy_from_user (char*,int ,unsigned int) ;
 scalar_t__ copy_to_user (int ,char*,int) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int wireless_send_event (struct net_device*,unsigned int,union iwreq_data*,char*) ;

__attribute__((used)) static int ioctl_standard_iw_point(struct iw_point *iwp, unsigned int cmd,
       const struct iw_ioctl_description *descr,
       iw_handler handler, struct net_device *dev,
       struct iw_request_info *info)
{
 int err, extra_size, user_length = 0, essid_compat = 0;
 char *extra;




 extra_size = descr->max_tokens * descr->token_size;


 switch (cmd) {
 case 129:
 case 131:
 case 128:
 case 130:
  if (iwp->length == descr->max_tokens + 1)
   essid_compat = 1;
  else if (IW_IS_SET(cmd) && (iwp->length != 0)) {
   char essid[IW_ESSID_MAX_SIZE + 1];
   unsigned int len;
   len = iwp->length * descr->token_size;

   if (len > IW_ESSID_MAX_SIZE)
    return -EFAULT;

   err = copy_from_user(essid, iwp->pointer, len);
   if (err)
    return -EFAULT;

   if (essid[iwp->length - 1] == '\0')
    essid_compat = 1;
  }
  break;
 default:
  break;
 }

 iwp->length -= essid_compat;


 if (IW_IS_SET(cmd)) {

  if (!iwp->pointer && iwp->length != 0)
   return -EFAULT;

  if (iwp->length > descr->max_tokens)
   return -E2BIG;
  if (iwp->length < descr->min_tokens)
   return -EINVAL;
 } else {

  if (!iwp->pointer)
   return -EFAULT;

  user_length = iwp->length;







  if ((descr->flags & IW_DESCR_FLAG_NOMAX) &&
      (user_length > descr->max_tokens)) {




   extra_size = user_length * descr->token_size;






  }
 }


 extra = kzalloc(extra_size, GFP_KERNEL);
 if (!extra)
  return -ENOMEM;


 if (IW_IS_SET(cmd) && (iwp->length != 0)) {
  if (copy_from_user(extra, iwp->pointer,
       iwp->length *
       descr->token_size)) {
   err = -EFAULT;
   goto out;
  }

  if (cmd == SIOCSIWENCODEEXT) {
   struct iw_encode_ext *ee = (void *) extra;

   if (iwp->length < sizeof(*ee) + ee->key_len) {
    err = -EFAULT;
    goto out;
   }
  }
 }

 if (IW_IS_GET(cmd) && !(descr->flags & IW_DESCR_FLAG_NOMAX)) {
  iwp->length = descr->max_tokens;
 }

 err = handler(dev, info, (union iwreq_data *) iwp, extra);

 iwp->length += essid_compat;


 if (!err && IW_IS_GET(cmd)) {

  if (user_length < iwp->length) {
   err = -E2BIG;
   goto out;
  }

  if (copy_to_user(iwp->pointer, extra,
     iwp->length *
     descr->token_size)) {
   err = -EFAULT;
   goto out;
  }
 }


 if ((descr->flags & IW_DESCR_FLAG_EVENT) &&
     ((err == 0) || (err == -EIWCOMMIT))) {
  union iwreq_data *data = (union iwreq_data *) iwp;

  if (descr->flags & IW_DESCR_FLAG_RESTRICT)



   wireless_send_event(dev, cmd, data, ((void*)0));
  else
   wireless_send_event(dev, cmd, data, extra);
 }

out:
 kfree(extra);
 return err;
}
