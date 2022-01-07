
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt_class {int xcl_ops; } ;
struct svc_xprt {int xpt_net; int xpt_bc_pending; int xpt_flags; int xpt_lock; int xpt_mutex; int xpt_users; int xpt_deferred; int xpt_ready; int xpt_list; struct svc_serv* xpt_server; int xpt_ref; int xpt_ops; struct svc_xprt_class* xpt_class; } ;
struct svc_serv {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int XPT_BUSY ;
 int get_net (int *) ;
 int init_net ;
 int kref_init (int *) ;
 int memset (struct svc_xprt*,int ,int) ;
 int mutex_init (int *) ;
 int rpc_init_wait_queue (int *,char*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

void svc_xprt_init(struct svc_xprt_class *xcl, struct svc_xprt *xprt,
     struct svc_serv *serv)
{
 memset(xprt, 0, sizeof(*xprt));
 xprt->xpt_class = xcl;
 xprt->xpt_ops = xcl->xcl_ops;
 kref_init(&xprt->xpt_ref);
 xprt->xpt_server = serv;
 INIT_LIST_HEAD(&xprt->xpt_list);
 INIT_LIST_HEAD(&xprt->xpt_ready);
 INIT_LIST_HEAD(&xprt->xpt_deferred);
 INIT_LIST_HEAD(&xprt->xpt_users);
 mutex_init(&xprt->xpt_mutex);
 spin_lock_init(&xprt->xpt_lock);
 set_bit(XPT_BUSY, &xprt->xpt_flags);
 rpc_init_wait_queue(&xprt->xpt_bc_pending, "xpt_bc_pending");
 xprt->xpt_net = get_net(&init_net);
}
