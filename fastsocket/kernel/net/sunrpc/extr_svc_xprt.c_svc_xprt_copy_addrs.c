
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {int xpt_local; int xpt_remotelen; int xpt_remote; } ;
struct TYPE_2__ {int addr6; int addr; } ;
struct svc_rqst {TYPE_1__ rq_daddr; int rq_addrlen; int rq_addr; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int memcpy (int *,int *,int ) ;

void svc_xprt_copy_addrs(struct svc_rqst *rqstp, struct svc_xprt *xprt)
{
 struct sockaddr *sin;

 memcpy(&rqstp->rq_addr, &xprt->xpt_remote, xprt->xpt_remotelen);
 rqstp->rq_addrlen = xprt->xpt_remotelen;





 sin = (struct sockaddr *)&xprt->xpt_local;
 switch (sin->sa_family) {
 case 129:
  rqstp->rq_daddr.addr = ((struct sockaddr_in *)sin)->sin_addr;
  break;
 case 128:
  rqstp->rq_daddr.addr6 = ((struct sockaddr_in6 *)sin)->sin6_addr;
  break;
 }
}
