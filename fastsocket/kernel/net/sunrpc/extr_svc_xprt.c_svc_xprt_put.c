
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_ref; } ;


 int kref_put (int *,int ) ;
 int svc_xprt_free ;

void svc_xprt_put(struct svc_xprt *xprt)
{
 kref_put(&xprt->xpt_ref, svc_xprt_free);
}
