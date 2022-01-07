
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; scalar_t__ page_len; TYPE_1__* head; } ;
struct svc_rqst {int rq_xprt_hlen; int rq_pages; int rq_respages; int rq_daddr; int rq_addrlen; int rq_addr; int rq_prot; TYPE_2__ rq_arg; struct svc_deferred_req* rq_deferred; } ;
struct svc_deferred_req {int xprt_hlen; int argslen; int daddr; int addrlen; int addr; int prot; scalar_t__ args; } ;
struct TYPE_3__ {int iov_len; scalar_t__ iov_base; } ;


 int memcpy (int *,int *,int ) ;

__attribute__((used)) static int svc_deferred_recv(struct svc_rqst *rqstp)
{
 struct svc_deferred_req *dr = rqstp->rq_deferred;


 rqstp->rq_arg.head[0].iov_base = dr->args + (dr->xprt_hlen>>2);

 rqstp->rq_arg.head[0].iov_len = (dr->argslen<<2) - dr->xprt_hlen;
 rqstp->rq_arg.page_len = 0;

 rqstp->rq_arg.len = dr->argslen<<2;
 rqstp->rq_prot = dr->prot;
 memcpy(&rqstp->rq_addr, &dr->addr, dr->addrlen);
 rqstp->rq_addrlen = dr->addrlen;

 rqstp->rq_xprt_hlen = dr->xprt_hlen;
 rqstp->rq_daddr = dr->daddr;
 rqstp->rq_respages = rqstp->rq_pages;
 return (dr->argslen<<2) - dr->xprt_hlen;
}
