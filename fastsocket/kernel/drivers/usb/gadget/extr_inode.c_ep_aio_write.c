
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_left; TYPE_1__* ki_filp; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;
struct ep_data {int desc; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct ep_data* private_data; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ copy_from_user (char*,int ,scalar_t__) ;
 int ep_aio_rwtail (struct kiocb*,char*,size_t,struct ep_data*,int *,int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int usb_endpoint_dir_in (int *) ;

__attribute__((used)) static ssize_t
ep_aio_write(struct kiocb *iocb, const struct iovec *iov,
  unsigned long nr_segs, loff_t o)
{
 struct ep_data *epdata = iocb->ki_filp->private_data;
 char *buf;
 size_t len = 0;
 int i = 0;

 if (unlikely(!usb_endpoint_dir_in(&epdata->desc)))
  return -EINVAL;

 buf = kmalloc(iocb->ki_left, GFP_KERNEL);
 if (unlikely(!buf))
  return -ENOMEM;

 for (i=0; i < nr_segs; i++) {
  if (unlikely(copy_from_user(&buf[len], iov[i].iov_base,
    iov[i].iov_len) != 0)) {
   kfree(buf);
   return -EFAULT;
  }
  len += iov[i].iov_len;
 }
 return ep_aio_rwtail(iocb, buf, len, epdata, ((void*)0), 0);
}
