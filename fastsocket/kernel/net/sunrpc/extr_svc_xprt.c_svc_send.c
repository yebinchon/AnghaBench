
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_buf {TYPE_2__* tail; int page_len; TYPE_1__* head; int len; } ;
struct svc_xprt {int xpt_bc_pending; int xpt_mutex; TYPE_3__* xpt_ops; int xpt_flags; } ;
struct svc_rqst {struct xdr_buf rq_res; struct svc_xprt* rq_xprt; } ;
struct TYPE_6__ {int (* xpo_sendto ) (struct svc_rqst*) ;int (* xpo_release_rqst ) (struct svc_rqst*) ;} ;
struct TYPE_5__ {int iov_len; } ;
struct TYPE_4__ {int iov_len; } ;


 int EAGAIN ;
 int ECONNREFUSED ;
 int EFAULT ;
 int ENOTCONN ;
 int XPT_CLOSE ;
 int XPT_DEAD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpc_wake_up (int *) ;
 int stub1 (struct svc_rqst*) ;
 int stub2 (struct svc_rqst*) ;
 int svc_xprt_release (struct svc_rqst*) ;
 scalar_t__ test_bit (int ,int *) ;

int svc_send(struct svc_rqst *rqstp)
{
 struct svc_xprt *xprt;
 int len;
 struct xdr_buf *xb;

 xprt = rqstp->rq_xprt;
 if (!xprt)
  return -EFAULT;


 rqstp->rq_xprt->xpt_ops->xpo_release_rqst(rqstp);


 xb = &rqstp->rq_res;
 xb->len = xb->head[0].iov_len +
  xb->page_len +
  xb->tail[0].iov_len;


 mutex_lock(&xprt->xpt_mutex);
 if (test_bit(XPT_DEAD, &xprt->xpt_flags)
   || test_bit(XPT_CLOSE, &xprt->xpt_flags))
  len = -ENOTCONN;
 else
  len = xprt->xpt_ops->xpo_sendto(rqstp);
 mutex_unlock(&xprt->xpt_mutex);
 rpc_wake_up(&xprt->xpt_bc_pending);
 svc_xprt_release(rqstp);

 if (len == -ECONNREFUSED || len == -ENOTCONN || len == -EAGAIN)
  return 0;
 return len;
}
