
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_left; int ki_retry; TYPE_1__* ki_filp; } ;
struct iovec {int dummy; } ;
struct ep_data {int desc; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct ep_data* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ep_aio_read_retry ;
 int ep_aio_rwtail (struct kiocb*,char*,int ,struct ep_data*,struct iovec const*,unsigned long) ;
 char* kmalloc (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int usb_endpoint_dir_in (int *) ;

__attribute__((used)) static ssize_t
ep_aio_read(struct kiocb *iocb, const struct iovec *iov,
  unsigned long nr_segs, loff_t o)
{
 struct ep_data *epdata = iocb->ki_filp->private_data;
 char *buf;

 if (unlikely(usb_endpoint_dir_in(&epdata->desc)))
  return -EINVAL;

 buf = kmalloc(iocb->ki_left, GFP_KERNEL);
 if (unlikely(!buf))
  return -ENOMEM;

 iocb->ki_retry = ep_aio_read_retry;
 return ep_aio_rwtail(iocb, buf, iocb->ki_left, epdata, iov, nr_segs);
}
