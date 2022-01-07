
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct netconfig {int dummy; } ;
typedef int SVCXPRT ;


 int svc_register (int *,int ,int ,void (*) (struct svc_req*,int *),int ) ;

int
amu_svc_register(SVCXPRT *xprt, u_long prognum, u_long versnum,
   void (*dispatch)(struct svc_req *rqstp, SVCXPRT *transp),
   u_long protocol, struct netconfig *dummy)
{

  return svc_register(xprt, prognum, versnum, dispatch, protocol);
}
