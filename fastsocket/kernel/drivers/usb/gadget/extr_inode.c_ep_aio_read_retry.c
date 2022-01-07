
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb_priv {scalar_t__ actual; int nr_segs; struct kiocb_priv* buf; TYPE_1__* iv; } ;
struct kiocb {struct kiocb_priv* private; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int iov_base; scalar_t__ iov_len; } ;


 scalar_t__ EFAULT ;
 scalar_t__ copy_to_user (int ,void*,scalar_t__) ;
 int kfree (struct kiocb_priv*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t ep_aio_read_retry(struct kiocb *iocb)
{
 struct kiocb_priv *priv = iocb->private;
 ssize_t len, total;
 void *to_copy;
 int i;




 total = priv->actual;
 len = 0;
 to_copy = priv->buf;
 for (i=0; i < priv->nr_segs; i++) {
  ssize_t this = min((ssize_t)(priv->iv[i].iov_len), total);

  if (copy_to_user(priv->iv[i].iov_base, to_copy, this)) {
   if (len == 0)
    len = -EFAULT;
   break;
  }

  total -= this;
  len += this;
  to_copy += this;
  if (total == 0)
   break;
 }
 kfree(priv->buf);
 kfree(priv);
 return len;
}
