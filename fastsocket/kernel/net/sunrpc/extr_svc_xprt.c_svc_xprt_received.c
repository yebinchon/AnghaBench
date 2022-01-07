
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_flags; } ;


 int BUG_ON (int) ;
 int XPT_BUSY ;
 int clear_bit (int ,int *) ;
 int svc_xprt_enqueue (struct svc_xprt*) ;
 int svc_xprt_get (struct svc_xprt*) ;
 int svc_xprt_put (struct svc_xprt*) ;
 int test_bit (int ,int *) ;

void svc_xprt_received(struct svc_xprt *xprt)
{
 BUG_ON(!test_bit(XPT_BUSY, &xprt->xpt_flags));



 svc_xprt_get(xprt);
 clear_bit(XPT_BUSY, &xprt->xpt_flags);
 svc_xprt_enqueue(xprt);
 svc_xprt_put(xprt);
}
