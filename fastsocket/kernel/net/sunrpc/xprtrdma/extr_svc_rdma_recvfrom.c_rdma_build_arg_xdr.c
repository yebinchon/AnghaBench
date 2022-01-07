
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ page_len; TYPE_3__* tail; TYPE_2__* head; scalar_t__ buflen; struct page** pages; scalar_t__ page_base; } ;
struct svc_rqst {TYPE_4__ rq_arg; struct page** rq_pages; struct page** rq_respages; } ;
struct svc_rdma_op_ctxt {int count; struct page** pages; TYPE_1__* sge; } ;
struct page {int dummy; } ;
struct TYPE_7__ {scalar_t__ iov_len; int * iov_base; } ;
struct TYPE_6__ {scalar_t__ iov_len; int iov_base; } ;
struct TYPE_5__ {scalar_t__ length; } ;


 int BUG_ON (int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int page_address (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static void rdma_build_arg_xdr(struct svc_rqst *rqstp,
          struct svc_rdma_op_ctxt *ctxt,
          u32 byte_count)
{
 struct page *page;
 u32 bc;
 int sge_no;


 page = ctxt->pages[0];
 put_page(rqstp->rq_pages[0]);
 rqstp->rq_pages[0] = page;


 rqstp->rq_arg.head[0].iov_base = page_address(page);
 rqstp->rq_arg.head[0].iov_len = min(byte_count, ctxt->sge[0].length);
 rqstp->rq_arg.len = byte_count;
 rqstp->rq_arg.buflen = byte_count;


 bc = byte_count - rqstp->rq_arg.head[0].iov_len;


 rqstp->rq_arg.page_len = bc;
 rqstp->rq_arg.page_base = 0;
 rqstp->rq_arg.pages = &rqstp->rq_pages[1];
 sge_no = 1;
 while (bc && sge_no < ctxt->count) {
  page = ctxt->pages[sge_no];
  put_page(rqstp->rq_pages[sge_no]);
  rqstp->rq_pages[sge_no] = page;
  bc -= min(bc, ctxt->sge[sge_no].length);
  rqstp->rq_arg.buflen += ctxt->sge[sge_no].length;
  sge_no++;
 }
 rqstp->rq_respages = &rqstp->rq_pages[sge_no];




 BUG_ON(bc && (sge_no == ctxt->count));
 BUG_ON((rqstp->rq_arg.head[0].iov_len + rqstp->rq_arg.page_len)
        != byte_count);
 BUG_ON(rqstp->rq_arg.len != byte_count);


 bc = sge_no;
 while (sge_no < ctxt->count) {
  page = ctxt->pages[sge_no++];
  put_page(page);
 }
 ctxt->count = bc;


 rqstp->rq_arg.tail[0].iov_base = ((void*)0);
 rqstp->rq_arg.tail[0].iov_len = 0;
}
