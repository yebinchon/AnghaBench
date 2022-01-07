
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int page_len; TYPE_3__* head; int len; TYPE_2__* tail; int buflen; int * pages; int page_base; } ;
struct svc_rqst {TYPE_4__ rq_arg; int rq_xprt; int rq_prot; scalar_t__ rq_resused; int * rq_respages; int * rq_pages; } ;
struct TYPE_5__ {int page_len; int buflen; int len; TYPE_2__* tail; TYPE_3__* head; int page_base; } ;
struct svc_rdma_op_ctxt {int count; size_t hdr_count; TYPE_1__ arg; int * pages; } ;
struct TYPE_7__ {int iov_len; int iov_base; } ;
struct TYPE_6__ {int iov_len; } ;


 int BUG_ON (int) ;
 int IPPROTO_MAX ;
 int dprintk (char*,int,int ,int ,int) ;
 int put_page (int ) ;
 int svc_rdma_put_context (struct svc_rdma_op_ctxt*,int ) ;
 int svc_xprt_copy_addrs (struct svc_rqst*,int ) ;

__attribute__((used)) static int rdma_read_complete(struct svc_rqst *rqstp,
         struct svc_rdma_op_ctxt *head)
{
 int page_no;
 int ret;

 BUG_ON(!head);


 for (page_no = 0; page_no < head->count; page_no++) {
  put_page(rqstp->rq_pages[page_no]);
  rqstp->rq_pages[page_no] = head->pages[page_no];
 }

 rqstp->rq_arg.pages = &rqstp->rq_pages[head->hdr_count];
 rqstp->rq_arg.page_len = head->arg.page_len;
 rqstp->rq_arg.page_base = head->arg.page_base;


 rqstp->rq_respages = &rqstp->rq_arg.pages[page_no];
 rqstp->rq_resused = 0;


 rqstp->rq_arg.head[0] = head->arg.head[0];
 rqstp->rq_arg.tail[0] = head->arg.tail[0];
 rqstp->rq_arg.len = head->arg.len;
 rqstp->rq_arg.buflen = head->arg.buflen;


 svc_rdma_put_context(head, 0);


 rqstp->rq_prot = IPPROTO_MAX;
 svc_xprt_copy_addrs(rqstp, rqstp->rq_xprt);

 ret = rqstp->rq_arg.head[0].iov_len
  + rqstp->rq_arg.page_len
  + rqstp->rq_arg.tail[0].iov_len;
 dprintk("svcrdma: deferred read ret=%d, rq_arg.len =%d, "
  "rq_arg.head[0].iov_base=%p, rq_arg.head[0].iov_len = %zd\n",
  ret, rqstp->rq_arg.len, rqstp->rq_arg.head[0].iov_base,
  rqstp->rq_arg.head[0].iov_len);

 return ret;
}
