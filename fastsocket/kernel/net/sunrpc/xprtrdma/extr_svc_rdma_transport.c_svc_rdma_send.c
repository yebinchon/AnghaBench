
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xpt_flags; } ;
struct svcxprt_rdma {scalar_t__ sc_sq_depth; int sc_send_wait; int sc_lock; int sc_sq_count; TYPE_1__ sc_xprt; int sc_qp; } ;
struct ib_send_wr {scalar_t__ send_flags; struct ib_send_wr* next; } ;


 int BUG_ON (int) ;
 int ENOTCONN ;
 scalar_t__ IB_SEND_SIGNALED ;
 int XPT_CLOSE ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int dprintk (char*,int,scalar_t__,scalar_t__) ;
 int ib_post_send (int ,struct ib_send_wr*,struct ib_send_wr**) ;
 int rdma_stat_sq_starve ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sq_cq_reap (struct svcxprt_rdma*) ;
 int svc_xprt_get (TYPE_1__*) ;
 int svc_xprt_put (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

int svc_rdma_send(struct svcxprt_rdma *xprt, struct ib_send_wr *wr)
{
 struct ib_send_wr *bad_wr, *n_wr;
 int wr_count;
 int i;
 int ret;

 if (test_bit(XPT_CLOSE, &xprt->sc_xprt.xpt_flags))
  return -ENOTCONN;

 BUG_ON(wr->send_flags != IB_SEND_SIGNALED);
 wr_count = 1;
 for (n_wr = wr->next; n_wr; n_wr = n_wr->next)
  wr_count++;


 while (1) {
  spin_lock_bh(&xprt->sc_lock);
  if (xprt->sc_sq_depth < atomic_read(&xprt->sc_sq_count) + wr_count) {
   spin_unlock_bh(&xprt->sc_lock);
   atomic_inc(&rdma_stat_sq_starve);


   sq_cq_reap(xprt);


   wait_event(xprt->sc_send_wait,
       atomic_read(&xprt->sc_sq_count) <
       xprt->sc_sq_depth);
   if (test_bit(XPT_CLOSE, &xprt->sc_xprt.xpt_flags))
    return -ENOTCONN;
   continue;
  }

  for (i = 0; i < wr_count; i++)
   svc_xprt_get(&xprt->sc_xprt);


  atomic_add(wr_count, &xprt->sc_sq_count);
  ret = ib_post_send(xprt->sc_qp, wr, &bad_wr);
  if (ret) {
   set_bit(XPT_CLOSE, &xprt->sc_xprt.xpt_flags);
   atomic_sub(wr_count, &xprt->sc_sq_count);
   for (i = 0; i < wr_count; i ++)
    svc_xprt_put(&xprt->sc_xprt);
   dprintk("svcrdma: failed to post SQ WR rc=%d, "
          "sc_sq_count=%d, sc_sq_depth=%d\n",
          ret, atomic_read(&xprt->sc_sq_count),
          xprt->sc_sq_depth);
  }
  spin_unlock_bh(&xprt->sc_lock);
  if (ret)
   wake_up(&xprt->sc_send_wait);
  break;
 }
 return ret;
}
