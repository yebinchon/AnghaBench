
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_sock {int sk_tcplen; int ** sk_pages; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct svc_rqst {int ** rq_pages; TYPE_2__ rq_arg; } ;
typedef int rpc_fraghdr ;
struct TYPE_3__ {int iov_base; } ;


 int BUG_ON (int ) ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int page_address (int *) ;
 int put_page (int *) ;

__attribute__((used)) static unsigned int svc_tcp_restore_pages(struct svc_sock *svsk, struct svc_rqst *rqstp)
{
 unsigned int i, len, npages;

 if (svsk->sk_tcplen <= sizeof(rpc_fraghdr))
  return 0;
 len = svsk->sk_tcplen - sizeof(rpc_fraghdr);
 npages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 for (i = 0; i < npages; i++) {
  if (rqstp->rq_pages[i] != ((void*)0))
   put_page(rqstp->rq_pages[i]);
  BUG_ON(svsk->sk_pages[i] == ((void*)0));
  rqstp->rq_pages[i] = svsk->sk_pages[i];
  svsk->sk_pages[i] = ((void*)0);
 }
 rqstp->rq_arg.head[0].iov_base = page_address(rqstp->rq_pages[0]);
 return len;
}
