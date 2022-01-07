
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_res; } ;
struct kvec {int dummy; } ;


 int svc_putnl (struct kvec*,int ) ;

__attribute__((used)) static void svc_tcp_prep_reply_hdr(struct svc_rqst *rqstp)
{
 struct kvec *resv = &rqstp->rq_res.head[0];


 svc_putnl(resv, 0);
}
